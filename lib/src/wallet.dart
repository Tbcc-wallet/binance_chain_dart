import 'dart:math';
import 'dart:typed_data';
import 'dart:convert';

import './utils/bip32core.dart' as bip32;
import './utils/wif.dart' as wif;
import './utils/crypto.dart';
import './utils/num_utils.dart';

import './environment.dart';
import './http_client/http_client.dart';

import 'package:uuid/uuid.dart' as uuid;
import 'package:binance_chain/src/utils/keystore.dart';
import 'package:pointycastle/export.dart';
import 'package:convert/convert.dart';
import 'package:bip39/bip39.dart' as bip39;

class Wallet {
  String _privateKey;
  String _publicKey;
  String _publicKeyUncompressed;
  String _address;
  bip32.BIP32 _bip32;
  int _accountNumber;
  String _chain_id;
  int _sequence;
  BinanceEnvironment _env;
  HttpApiClient _httpClient;

  BinanceEnvironment get env => _env;

  /// Binance account address.
  ///
  /// Typically, an address is encoded in the bech32 format which includes a checksum and human-readable prefix (HRP).
  ///
  /// Example:
  ///
  /// ``bnb1ultyhpw2p2ktvr68swz56570lgj2rdsadq3ym2`` for mainnet (42 characters)
  ///
  /// ``tbnb1l9ffdr8e2pk7h4agvhwcslh2urwpuhqm2u82hy`` for testnet (43 characters)
  ///
  /// where HRP is ``bnb1`` and ``tbnb``.
  ///
  /// Read more: [Binance Chain Docs / blockchain / address](https://docs.binance.org/blockchain.html#address)
  String get address => _address;

  /// The Sequence Number is the way how Binance Chain prevents Replay Attack
  /// (the idea is borrowed from Cosmos network, but varies a bit in handling).
  ///
  /// Every transaction should have a new Sequence Number increased by 1 from the
  /// current latest sequence number of the Account, and after this transaction is
  /// recorded on the block chain, the Sequence Number will be set to the same number
  /// as the one of latest transaction.
  ///
  /// Read more: [Binance Chain Docs / chain access / account](https://docs.binance.org/chain-access.html#account-and-sequence-number)
  int get sequence => _sequence;

  /// Private key in hex.
  String get privateKey => _privateKey;

  /// Public key in hex.
  String get publicKey => _publicKey;

  String get publicKeyUncompressed => _publicKeyUncompressed;

  /// An internal identifier for the account in Binance.
  /// Read more: [Binance Chain Docs / chain access / account](https://docs.binance.org/chain-access.html#account-and-sequence-number)
  int get accountNumber => _accountNumber;

  String get chainId => _chain_id;

  HttpApiClient get httpClient {
    _httpClient = _httpClient ?? HttpApiClient(env: _env);
    return _httpClient;
  }

  /// Create wallet object from private key in hex.
  Wallet(String privateKey, BinanceEnvironment env) {
    if (privateKey.isNotEmpty) {
      _privateKey = privateKey;
      _env = env;
      _bip32 = bip32.BIP32.fromPrivateKey(hex.decode(_privateKey), null);

      _publicKey = hex.encode(_bip32.publicKey);
      _publicKeyUncompressed = hex.encode(_bip32.publicKeyUncompressed);

      _address = getAddressFromPublicKey(_publicKey, env.hrp);
    } else {
      throw ArgumentError('Private key can`t be empty');
    }
  }
  Wallet.addressOnly(String address) {
    _address = address;
  }

  /// Create wallet object from mnemonic phrase 12-24 words.
  Wallet.fromMnemonicPhrase(String mnemonicPhrase, BinanceEnvironment env) {
    if (bip39.validateMnemonic(mnemonicPhrase)) {
      _bip32 = bip32.BIP32.fromSeed(bip39.mnemonicToSeed(mnemonicPhrase)).derivePath("44'/714'/0'/0/0");
      _privateKey = hex.encode(_bip32.privateKey);
      _publicKey = hex.encode(_bip32.publicKey);
      _publicKeyUncompressed = hex.encode(_bip32.publicKeyUncompressed);

      _env = env;
      _address = getAddressFromPublicKey(_publicKey, env.hrp);
    } else {
      throw ArgumentError('Mnemonic Phrase is invalid');
    }
  }

  /// Create wallet object from seed [Uint8List]
  Wallet.fromSeed(Uint8List seed, BinanceEnvironment env) {
    _bip32 = bip32.BIP32.fromSeed(seed).derivePath("44'/714'/0'/0/0");
    _privateKey = hex.encode(_bip32.privateKey);
    _publicKey = hex.encode(_bip32.publicKey);
    _publicKeyUncompressed = hex.encode(_bip32.publicKeyUncompressed);

    _env = env;
    _address = getAddressFromPublicKey(_publicKey, env.hrp);
  }

  String toWIF() {
    return _bip32.toWIF();
  }

  factory Wallet.fromWIF(String stringWIF, BinanceEnvironment env) {
    return Wallet(hex.encode(wif.decode(stringWIF).privateKey.toList()), env);
  }

  /// only pbkdf2 yet
  factory Wallet.fromKeystore({
    Keystore keystore,
    String password,
    BinanceEnvironment env,
  }) {
    var kdfDerivator = PBKDF2KeyDerivator(HMac(SHA256Digest(), 64))
      ..init(
        Pbkdf2Parameters(
          hex.decode(keystore.crypto.kdfparams.salt),
          keystore.crypto.kdfparams.c,
          keystore.crypto.kdfparams.dklen,
        ),
      );

    var derivedKey = kdfDerivator.process(utf8.encode(password));

    var ciphertextbytes = hex.decode(keystore.crypto.ciphertext);
    var macBody = Uint8List(16 + ciphertextbytes.length)..setRange(0, 16, derivedKey.sublist(16, 32))..setRange(16, ciphertextbytes.length + 16, ciphertextbytes);

    var mac = SHA3Digest(int.parse(keystore.crypto.cipher.split('-')[1]) * 2).process(macBody);
    if (hex.encode(mac) == keystore.crypto.mac) {
      var cipher = StreamCipher('AES/CTR');
      cipher
        ..reset()
        ..init(
          false,
          ParametersWithIV(
            KeyParameter(derivedKey.sublist(0, int.parse(keystore.crypto.cipher.split('-')[1]) ~/ 8)),
            hex.decode(keystore.crypto.cipherparams.iv),
          ),
        );
      return Wallet(hex.encode(cipher.process(Uint8List.fromList(hex.decode(keystore.crypto.ciphertext)))), env);
    } else {
      throw ArgumentError('Invalid Password');
    }
  }

  Keystore toKeystore(String password) {
    var keystore = Keystore();
    final _sGen = Random.secure();
    final _seed = Uint8List.fromList(List.generate(32, (n) => _sGen.nextInt(255)));
    final secRnd = SecureRandom('Fortuna')..seed(KeyParameter(_seed));
    var id = uuid.Uuid().v4();
    var salt = secRnd.nextBytes(32);
    var iv = secRnd.nextBytes(16);
    var crypto = Crypto(
        cipher: 'aes-256-ctr',
        kdf: 'pbkdf2',
        kdfparams: Kdfparams(
          c: 262144,
          dklen: 32,
          prf: 'hmac-sha256',
          salt: hex.encode(salt),
        ),
        cipherparams: Cipherparams(
          iv: hex.encode(iv),
        ));
    keystore.crypto = crypto;
    keystore.version = 1;
    keystore.id = id;
    var cipher = StreamCipher('AES/CTR');

    var kdfDerivator = PBKDF2KeyDerivator(HMac(SHA256Digest(), 64))
      ..init(
        Pbkdf2Parameters(
          hex.decode(keystore.crypto.kdfparams.salt),
          keystore.crypto.kdfparams.c,
          keystore.crypto.kdfparams.dklen,
        ),
      );
    var derivedKey = kdfDerivator.process(utf8.encode(password));

    cipher
      ..reset()
      ..init(
        true,
        ParametersWithIV(
          KeyParameter(derivedKey.sublist(0, int.parse(keystore.crypto.cipher.split('-')[1]) ~/ 8)),
          iv,
        ),
      );

    var cipherText = cipher.process(Uint8List.fromList(hex.decode(_privateKey)));

    crypto.ciphertext = hex.encode(cipherText);

    var macBody = Uint8List(16 + cipherText.length)..setRange(0, 16, derivedKey.sublist(16, 32))..setRange(16, cipherText.length + 16, cipherText);

    var mac = SHA3Digest(int.parse(keystore.crypto.cipher.split('-')[1]) * 2).process(macBody);

    crypto.mac = hex.encode(mac);

    return keystore;
  }

  /// Load ``accountNumber``, ``chainId`` and ``sequence`` using HTTP request
  Future<void> initialize_wallet() async {
    if (_accountNumber == null) {
      var account = await httpClient.getAccount(_address);
      _accountNumber = account.load.accountNumber;
      _sequence = account.load.sequence;
      print(account.load.sequence);
      var nodeInfo = await httpClient.getNodeInfo();
      _chain_id = nodeInfo.load.network;
    }
  }

  /// Sign message using secp256k1
  Uint8List sign_message(Uint8List message) {
    var dsaSigner = ECDSASigner(SHA256Digest(), HMac(SHA256Digest(), 64))..init(true, PrivateKeyParameter(ECPrivateKey(BigInt.parse(privateKey, radix: 16), ECDomainParameters('secp256k1'))));
    ECSignature s = dsaSigner.generateSignature(message);
    var buffer = Uint8List(64);
    var bi = encodeBigInt(s.r);

    buffer.setRange(0, 32, bi);

    if (s.s.compareTo(ECCurve_secp256k1().n >> 1) > 0) {
      buffer.setRange(32, 64, encodeBigInt(ECCurve_secp256k1().n - s.s));
    } else {
      buffer.setRange(32, 64, encodeBigInt(s.s));
    }
    return buffer;
  }

  void increment_account_sequence() {
    if (_sequence != null) {
      _sequence += 1;
    }
  }

  Future<void> reload_account_sequence() async {
    var account = await httpClient.getAccount(_address);
    _sequence = account.load.sequence;
  }

  /// read more: [Binance Chain Docs / encoding / orderID](https://docs.binance.org/encoding.html#order-id)
  String generate_order_id() {
    return '${hex.encode(decode_address(address)).toUpperCase()}-${_sequence + 1}';
  }
}

bool validateAddress(String address) {
  var bechDecoded = bech32_decode(address);
  return bechDecoded[0] != null;
}
