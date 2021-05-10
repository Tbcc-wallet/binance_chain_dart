import 'dart:convert';
import 'dart:typed_data';
import 'package:convert/convert.dart';
import 'package:pointycastle/digests/ripemd160.dart';
import 'package:pointycastle/digests/sha256.dart';
import 'package:pointycastle/api.dart' show KeyParameter;
import 'package:pointycastle/digests/sha3.dart';
import 'package:pointycastle/macs/hmac.dart';
import 'package:pointycastle/digests/sha512.dart';

import './num_utils.dart';

String CHARSET = 'qpzry9x8gf2tvdw0s3jn54khce6mua7l';

int bech32_polymod(List values) {
  ///Internal function that computes the Bech32 checksum.

  final generator = [0x3b6a57b2, 0x26508e6d, 0x1ea119fa, 0x3d4233dd, 0x2a1462b3];

  var chk = 1;
  int top;
  for (int value in values) {
    top = chk >> 25;
    chk = (chk & 0x1ffffff) << 5 ^ value;
    for (var i in [0, 1, 2, 3, 4]) {
      chk ^= ((top >> i) & 1) >= 1 ? generator[i] : 0;
    }
  }
  return chk;
}

Uint8List bech32_hrp_expand(String hrp) {
  /// Expand the HRP into values for checksum computation.

  var result = <int>[];
  result += List<int>.generate(hrp.length, (i) => hrp.codeUnitAt(i) >> 5);
  result += [0];
  result += List<int>.generate(hrp.length, (i) => hrp.codeUnitAt(i) & 31);

  return Uint8List.fromList(result);
}

Uint8List bech32_create_checksum(String hrp, Uint8List data) {
  ///Compute the checksum values given HRP and data.

  var values = bech32_hrp_expand(hrp) + data;

  var polymod = bech32_polymod(values + [0, 0, 0, 0, 0, 0]) ^ 1;

  var result = List<int>.generate(6, (i) => (polymod >> 5 * (5 - i)) & 31);

  return Uint8List.fromList(result);
}

bool bech32_verify_checksum(hrp, data) {
  //Verify a checksum given HRP and converted data characters.

  return bech32_polymod(bech32_hrp_expand(hrp) + data) == 1;
}

String bech32_encode(String hrp, Uint8List data) {
  /// Compute a Bech32 string given HRP and data values.

  var combined = data + bech32_create_checksum(hrp, data);

  return hrp + '1' + List<String>.generate(combined.length, (i) => CHARSET[combined[i]]).join('');
}

List bech32_decode(String bech) {
  /// Validate a Bech32 string, and determine HRP and data.

  //validation
  if ((<bool>[for (var x in bech.codeUnits) (x < 33 && x > 126)].firstWhere(
            (element) => element,
            orElse: () => null,
          ) !=
          null) ||
      ((bech.toLowerCase() != bech && bech.toUpperCase() != bech))) {
    return [null, null];
  }
  bech = bech.toLowerCase();
  var pos = bech.lastIndexOf('1');
  if (pos < 1 || pos + 7 > bech.length || bech.length > 90) {
    return [null, null];
  }
  if (<bool>[for (var x in List<int>.generate(bech.substring(pos + 1).length, (index) => index + pos + 1)) CHARSET.contains(bech[x])].firstWhere((element) => element == false, orElse: () => null) != null) {
    return [null, null];
  }

  var hrp = bech.substring(0, pos);
  var data = List<int>.generate(bech.substring(pos + 1).length, (index) => CHARSET.indexOf(bech[index + pos + 1]));

  if (!bech32_verify_checksum(hrp, data)) {
    return [null, null];
  }

  return [hrp, data.sublist(0, data.length - 6)];
}

Uint8List decode_address(String address) {
  var components = bech32_decode(address);
  if (components[0] == null) {
    return null;
  }

  var bits = convertbits(Uint8List.fromList(components[1]), 5, 8, false);
  return bits;
}

String encode(String hrp, Uint8List witprog) {
  /// Encode a segwit address.

  return bech32_encode(hrp, convertbits(witprog, 8, 5));
}

dynamic getAddressFromPublicKey(String publicKey, [hrp = 'tbnb']) {
  final s = SHA256Digest().process(hex.decode(publicKey));
  final r = RIPEMD160Digest().process(s);

  return encode(hrp, r);
}

final ONE1 = Uint8List.fromList([1]);
final ZERO1 = Uint8List.fromList([0]);

Uint8List hash160(Uint8List buffer) {
  var _tmp = SHA256Digest().process(buffer);
  return RIPEMD160Digest().process(_tmp);
}

Uint8List hmacSHA512(Uint8List key, Uint8List data) {
  final _tmp = HMac(SHA512Digest(), 128)..init(KeyParameter(key));
  return _tmp.process(data);
}

class BSCAddress {
  static final RegExp _basicAddress = RegExp(r'^(0x)?[0-9a-f]{40}', caseSensitive: false);

  /// The length of an ethereum address, in bytes.
  static const addressByteLength = 20;

  final Uint8List addressBytes;

  /// An ethereum address from the raw address bytes.
  BSCAddress(this.addressBytes) : assert(addressBytes.length == addressByteLength);

  /// Constructs an Ethereum address from a public key. The address is formed by
  /// the last 20 bytes of the keccak hash of the public key.
  factory BSCAddress.fromPublicKey(Uint8List publicKey) {
    return BSCAddress(publicKeyToAddress(publicKey));
  }

  /// Parses an Ethereum address from the hexadecimal representation. The
  /// representation must have a length of 20 bytes (or 40 hexadecimal chars),
  /// and can optionally be prefixed with "0x".
  ///
  /// If [enforceEip55] is true or the address has both uppercase and lowercase
  /// chars, the address must be valid according to [EIP 55](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-55.md).
  factory BSCAddress.fromHex(String hex, {bool enforceEip55 = false}) {
    if (!_basicAddress.hasMatch(hex)) {
      throw ArgumentError.value(hex, 'address', 'Must be a hex string with a length of 40, optionally prefixed with "0x"');
    }

    if (!enforceEip55 && (hex.toUpperCase() == hex || hex.toLowerCase() == hex)) {
      return BSCAddress(hexToBytes(hex));
    }

    // Validates as of EIP 55, https://ethereum.stackexchange.com/a/1379
    final address = strip0x(hex);
    final hash = bytesToHex(keccakAscii(address.toLowerCase()));
    for (var i = 0; i < 40; i++) {
      // the nth letter should be uppercase if the nth digit of casemap is 1
      final hashedPos = int.parse(hash[i], radix: 16);
      if ((hashedPos > 7 && address[i].toUpperCase() != address[i]) || (hashedPos <= 7 && address[i].toLowerCase() != address[i])) {
        throw ArgumentError('Address has invalid case-characters and is'
            'thus not EIP-55 conformant, rejecting. Address was: $hex');
      }
    }

    return BSCAddress(hexToBytes(hex));
  }

  /// A hexadecimal representation of this address, padded to a length of 40
  /// characters or 20 bytes, and prefixed with "0x".
  String get hex => bytesToHex(addressBytes, include0x: true, forcePadLength: 40);

  /// A hexadecimal representation of this address, padded to a length of 40
  /// characters or 20 bytes, but not prefixed with "0x".
  String get hexNo0x => bytesToHex(addressBytes, include0x: false, forcePadLength: 40);

  /// Returns this address in a hexadecimal representation, like with [hex].
  /// The hexadecimal characters A-F in the address will be in lower- or
  /// uppercase depending on [EIP 55](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-55.md).
  String get hexEip55 {
    // https://eips.ethereum.org/EIPS/eip-55#implementation
    final hex = hexNo0x.toLowerCase();
    final hash = bytesToHex(keccakAscii(hexNo0x));

    final eip55 = StringBuffer('0x');
    for (var i = 0; i < hex.length; i++) {
      if (int.parse(hash[i], radix: 16) >= 8) {
        eip55.write(hex[i].toUpperCase());
      } else {
        eip55.write(hex[i]);
      }
    }

    return eip55.toString();
  }

  @override
  String toString() => hex;

  @override
  bool operator ==(other) {
    return identical(this, other) || (other is BSCAddress && other.hex == hex);
  }

  @override
  int get hashCode {
    return hex.hashCode;
  }
}

Uint8List publicKeyToAddress(Uint8List publicKey) {
  assert(publicKey.length == 64);

  final hashed = sha3digest.process(publicKey);
  return Uint8List.view(hashed.buffer, _shaBytes - 20);
}

const int _shaBytes = 256 ~/ 8;
// keccak is implemented as sha3 digest in pointycastle, see
// https://github.com/PointyCastle/pointycastle/issues/128
final SHA3Digest sha3digest = SHA3Digest(_shaBytes * 8);

Uint8List keccak256(Uint8List input) {
  sha3digest.reset();
  return sha3digest.process(input);
}

Uint8List keccakUtf8(String input) {
  return keccak256(Uint8List.fromList(utf8.encode(input)));
}

Uint8List keccakAscii(String input) {
  return keccak256(ascii.encode(input));
}

/// Converts the hexadecimal string, which can be prefixed with 0x, to a byte
/// sequence.
Uint8List hexToBytes(String hexStr) {
  final bytes = hex.decode(strip0x(hexStr));
  if (bytes is Uint8List) return bytes;

  return Uint8List.fromList(bytes);
}

String strip0x(String hex) {
  if (hex.startsWith('0x')) return hex.substring(2);
  return hex;
}

String bytesToHex(List<int> bytes, {bool include0x = false, int forcePadLength, bool padToEvenLength = false}) {
  var encoded = hex.encode(bytes);

  if (forcePadLength != null) {
    assert(forcePadLength >= encoded.length);

    final padding = forcePadLength - encoded.length;
    encoded = ('0' * padding) + encoded;
  }

  if (padToEvenLength && encoded.length % 2 != 0) {
    encoded = '0$encoded';
  }

  return (include0x ? '0x' : '') + hex.encode(bytes);
}
