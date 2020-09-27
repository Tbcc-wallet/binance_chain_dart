import 'dart:collection';
import 'dart:convert';
import 'dart:typed_data';

import 'package:decimal/decimal.dart';
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:convert/convert.dart';

import '../utils/num_utils.dart';
import '../utils/constants.dart';
import '../utils/crypto.dart';
import '../wallet.dart';
import './proto/gen/dex.pb.dart';
import 'SuperMsg.dart';

// An identifier for tools triggering broadcast transactions, set to zero if unwilling to disclose.
var BROADCAST_SOURCE = 0;

class Msg {
  final AMINO_MESSAGE_TYPE = '';
  bool INCLUDE_AMINO_LENGTH_PREFIX = false;
  List<Wallet> _wallets = [];
  String memo;

  Msg(List<Wallet> wallets, [this.memo = '']) {
    if (wallets != null) _wallets.addAll(wallets);
  }

  Wallet get wallet {
    if (_wallets?.isNotEmpty == true) return _wallets.first;
  }

  List<Wallet> get wallets => _wallets;

  Map to_map() => {};

  Map to_sign_map() => {};

  dynamic to_protobuf() => null;
  dynamic to_protobuf_with_sign(Map<String, dynamic> withJsonAndSign, Wallet wallet) => null;

  Uint8List to_amino([Map<String, dynamic> withJsonAndSign, Wallet wallet]) {
    var varint_length;
    var proto = withJsonAndSign != null ? to_protobuf_with_sign(withJsonAndSign, wallet) : to_protobuf();
    if (proto.runtimeType != Uint8List) {
      proto = proto.writeToBuffer();
    }

    var type_bytes = <int>[];
    if (AMINO_MESSAGE_TYPE.isNotEmpty) {
      type_bytes = hex.decode(AMINO_MESSAGE_TYPE);
      varint_length = varint_encode(proto.length + type_bytes.length);
    } else {
      varint_length = varint_encode(proto.length);
    }
    var msg = <int>[];
    if (INCLUDE_AMINO_LENGTH_PREFIX) {
      msg += (varint_length);
    }
    msg = msg + type_bytes + proto;

    return Uint8List.fromList(msg);
  }

  String to_hex_data() => hex.encode(StdTxMsg(this).to_amino());
  String to_hex_dataV2([Map<String, dynamic> withJsonAndSign, Wallet wallet]) => hex.encode(SuperStdTxMsg(this).to_amino(withJsonAndSign, wallet));
}

class Signature {
  final Msg _msg;
  var _chain_id;
  var _data;
  var _source;

  Signature(this._msg, [data]) {
    _chain_id = _msg.wallet.chainId;
    _data = data;
    _source = BROADCAST_SOURCE;
  }

  String to_json() => json.encode(LinkedHashMap.from({
        'account_number': _msg.wallet.accountNumber.toString(),
        'chain_id': _chain_id,
        'data': _data,
        'memo': _msg.memo,
        'msgs': [_msg.to_map()],
        'sequence': _msg.wallet.sequence.toString(),
        'source': _source.toString()
      }));

  Uint8List to_bytes_json() => Uint8List.fromList(utf8.encode(to_json()));

  Uint8List sign(Wallet wallet) {
    //generate string to sign
    var json_bytes = to_bytes_json();

    var signed = wallet.sign_message(json_bytes);
    return signed;
  }
}

class SignatureMsg extends Msg {
  @override
  final AMINO_MESSAGE_TYPE = '';
  Signature _signature;
  Signature get signature => _signature;
  SignatureMsg(Msg msg) : super(msg.wallets) {
    _signature = Signature(msg);
  }

  @override
  StdSignature to_protobuf() {
    var pub_key_msg = PubKeyMsg(wallet);
    var std_sig = StdSignature()
      ..sequence = fixnum.Int64(wallet.sequence)
      ..accountNumber = fixnum.Int64(wallet.accountNumber)
      ..pubKey = pub_key_msg.to_amino()
      ..signature = _signature.sign(wallet);
    return std_sig;
  }
}

class StdTxMsg extends Msg {
  @override
  final AMINO_MESSAGE_TYPE = 'F0625DEE';

  @override
  final INCLUDE_AMINO_LENGTH_PREFIX = true;

  final Msg _msg;

  final _source = BROADCAST_SOURCE;

  final String _data;
  List<SignatureMsg> _signatures = [];
  StdTxMsg(this._msg, [this._data = '']) : super(_msg.wallets) {
    _signatures.add(SignatureMsg(_msg));
  }
  @override
  StdTx to_protobuf() {
    var stdtx = StdTx()
      ..msgs.add(_msg.to_amino().toList())
      ..data = _data.codeUnits
      ..memo = _msg.memo
      ..source = fixnum.Int64(_source);
    _signatures.forEach((element) {
      stdtx.signatures.add(element.to_amino().toList());
    });
    return stdtx;
  }
}

class PubKeyMsg extends Msg {
  @override
  final AMINO_MESSAGE_TYPE = 'EB5AE987';

  PubKeyMsg(Wallet wallet) : super([wallet]);

  @override
  Uint8List to_protobuf() {
    return Uint8List.fromList(hex.decode(wallet.publicKey));
  }

  @override
  Uint8List to_amino([_, __]) {
    var proto = to_protobuf();

    var type_bytes = hex.decode(AMINO_MESSAGE_TYPE);

    var varint_length = varint_encode(proto.length);

    var msg = type_bytes + varint_length + proto;

    return Uint8List.fromList(msg);
  }
}

///Transfer is the transaction for transfering funds to different addresses.
///
///Read more: [Binance Chain Docs / Amino encoding / Transfer](https://docs.binance.org/guides/concepts/encoding/amino-example.html#transfer)
///Or [Wiki of repo on GitHub](https://github.com/Tbcc-wallet/binance_chain_dart/wiki)
class TransferMsg extends Msg {
  @override
  final AMINO_MESSAGE_TYPE = '2A2C87FA';

  String _symbol;
  Decimal _amount;
  int _amountAmino;
  String _from_address;
  String _to_address;

  TransferMsg({
    String symbol,
    Decimal amount,
    String to_address,
    String memo,
    Wallet wallet,
  }) : super([wallet], memo) {
    _symbol = symbol;
    _amount = amount;
    _to_address = to_address;
    memo = memo ?? '';
    _from_address = wallet.address;
    _amountAmino = (_amount * Decimal.fromInt(10.pow(8))).toInt();
  }

  @override
  Map to_map() => LinkedHashMap.from({
        'inputs': [
          LinkedHashMap.from({
            'address': _from_address,
            'coins': [
              LinkedHashMap.from({'amount': _amountAmino, 'denom': _symbol})
            ]
          })
        ],
        'outputs': [
          LinkedHashMap.from({
            'address': _to_address,
            'coins': [
              LinkedHashMap.from({'amount': _amountAmino, 'denom': _symbol})
            ]
          })
        ]
      });

  @override
  Map to_sign_map() => {'to_address': _to_address, 'amount': _amount, 'denom': _symbol};

  @override
  Send to_protobuf() {
    var token = Send_Token()
      ..denom = _symbol
      ..amount = fixnum.Int64(_amountAmino);

    var input_addr = Send_Input()
      ..address = decode_address(_from_address).toList()
      ..coins.add(token);

    var output_addr = Send_Output()
      ..address = decode_address(_to_address).toList()
      ..coins.add(token);

    var msg = Send()..inputs.add(input_addr)..outputs.add(output_addr);

    return msg;
  }
}

class Transfer {
  String to_address;
  String symbol;
  Decimal amount;
  int amount_amino;
  Transfer(this.to_address, this.symbol, this.amount);
}

/// Multisend. See [Wiki of repo on GitHub](https://github.com/Tbcc-wallet/binance_chain_dart/wiki)
class MultiTransferMsg extends Msg {
  @override
  final AMINO_MESSAGE_TYPE = '2A2C87FA';

  String _symbol;
  Decimal _amount;
  int _amountAmino;
  String _from_address;
  List<String> _to_addresses;

  Send compiled_msg;
  LinkedHashMap compiled_map;

  MultiTransferMsg({List<Transfer> transfers, String memo, Wallet wallet}) : super([wallet], memo) {
    _from_address = wallet.address;

    var coins = <String, int>{};

    for (var transfer in transfers) {
      transfer.amount_amino = (transfer.amount * Decimal.fromInt(10.pow(8))).toInt();
      coins.containsKey(transfer.symbol) ? coins[transfer.symbol] += transfer.amount_amino : coins[transfer.symbol] = transfer.amount_amino;
    }

    compiled_map = LinkedHashMap.from({
      'inputs': [
        LinkedHashMap.from({
          'address': _from_address,
          'coins': [
            for (var coin in coins.entries) LinkedHashMap.from({'amount': coin.value, 'denom': coin.key}),
          ]
        }),
      ],
      'outputs': [
        for (var transfer in transfers)
          LinkedHashMap.from({
            'address': transfer.to_address,
            'coins': [
              LinkedHashMap.from({'amount': transfer.amount_amino, 'denom': transfer.symbol}),
            ]
          }),
      ]
    });

    var input_addr = Send_Input()
      ..address = decode_address(_from_address).toList()
      ..coins.addAll([
        for (var coin in coins.entries)
          Send_Token()
            ..denom = coin.key
            ..amount = fixnum.Int64(coin.value)
      ]);

    var msg = Send()
      ..inputs.add(input_addr)
      ..outputs.addAll([
        for (var transfer in transfers)
          Send_Output()
            ..address = decode_address(transfer.to_address).toList()
            ..coins.add(
              Send_Token()
                ..denom = transfer.symbol
                ..amount = fixnum.Int64(transfer.amount_amino),
            )
      ]);

    compiled_msg = msg;
  }

  MultiTransferMsg.oneTokenSameAmount({
    String symbol,
    Decimal amount,
    List<String> to_addresses,
    String memo,
    Wallet wallet,
  }) : super([wallet], memo) {
    _symbol = symbol;
    _amount = amount;
    _to_addresses = to_addresses;
    _amountAmino = (_amount * Decimal.fromInt(10.pow(8))).toInt();

    compiled_map = LinkedHashMap.from({
      'inputs': [
        LinkedHashMap.from({
          'address': _from_address,
          'coins': [
            LinkedHashMap.from({'amount': _amountAmino * _to_addresses.length, 'denom': _symbol}),
          ]
        }),
      ],
      'outputs': [
        for (var address in _to_addresses)
          LinkedHashMap.from({
            'address': address,
            'coins': [
              LinkedHashMap.from({'amount': _amountAmino, 'denom': _symbol}),
            ]
          }),
      ]
    });

    var input_addr = Send_Input()
      ..address = decode_address(_from_address).toList()
      ..coins.add(Send_Token()
        ..denom = _symbol
        ..amount = fixnum.Int64(_amountAmino * _to_addresses.length));

    var msg = Send()
      ..inputs.add(input_addr)
      ..outputs.addAll([
        for (String address in _to_addresses)
          Send_Output()
            ..address = decode_address(address).toList()
            ..coins.add(
              Send_Token()
                ..denom = _symbol
                ..amount = fixnum.Int64(_amountAmino),
            )
      ]);

    compiled_msg = msg;
  }

  @override
  Map to_map() => compiled_map;

  @override
  Send to_protobuf() => compiled_msg;
}

///NewOrder transaction will create a new order to buy or sell tokens on Binance DEX.
///
///Read more: [Binance Chain Docs / Amino encoding / New Order] (https://docs.binance.org/guides/concepts/encoding/amino-example.html#neworder)
///Or [Wiki of repo on GitHub](https://github.com/Tbcc-wallet/binance_chain_dart/wiki)
class NewOrderMsg extends Msg {
  @override
  final AMINO_MESSAGE_TYPE = 'CE6DC043';

  String _symbol;
  int _time_in_force;
  int _order_type;
  int _side;
  Decimal _price;
  int _price_encoded;
  Decimal _quantity;
  int _quantity_encoded;

  NewOrderMsg({
    String symbol,
    TimeInForce time_in_force,
    OrderType order_type,
    OrderSide side,
    Decimal price,
    Decimal quantity,
    Wallet wallet,
  }) : super([wallet]) {
    _symbol = symbol;
    _time_in_force = time_in_force.value;
    _order_type = order_type.value;
    _side = side.value;
    _price = price;
    _price_encoded = (_price * Decimal.fromInt(10.pow(8))).toInt();
    _quantity = quantity;
    _quantity_encoded = (_quantity * Decimal.fromInt(10.pow(8))).toInt();
  }
  @override
  Map to_map() => LinkedHashMap.from({
        'id': wallet.generate_order_id(),
        'ordertype': _order_type,
        'price': _price_encoded,
        'quantity': _quantity_encoded,
        'sender': wallet.address,
        'side': _side,
        'symbol': _symbol,
        'timeinforce': _time_in_force,
      });

  @override
  Map to_sign_map() => {'order_type': _order_type, 'price': _price, 'quantity': _quantity, 'side': _side, 'symbol': _symbol, 'time_in_force': _time_in_force};

  @override
  NewOrder to_protobuf() {
    var pb = NewOrder()
      ..sender = decode_address(wallet.address).toList()
      ..id = wallet.generate_order_id()
      ..symbol = _symbol
      ..timeinforce = fixnum.Int64(_time_in_force)
      ..ordertype = fixnum.Int64(_order_type)
      ..side = fixnum.Int64(_side)
      ..price = fixnum.Int64(_price_encoded)
      ..quantity = fixnum.Int64(_quantity_encoded);
    return pb;
  }
}

///Cancel transactions (cancel the outstanding/unfilled) orders from the Binance DEX.
///After cancel success, the locked quantity on the orders will return back to the originating
///address balance and become free to use, i.e. transfer or send new orders.
///
///Read more: [Binance Chain Docs / Amino encoding / Cancel Order](https://docs.binance.org/guides/concepts/encoding/amino-example.html#cancel)
///Or [Wiki of repo on GitHub](https://github.com/Tbcc-wallet/binance_chain_dart/wiki)
class CancelOrderMsg extends Msg {
  @override
  final AMINO_MESSAGE_TYPE = '166E681B';
  String _symbol;
  String _order_id;

  CancelOrderMsg({String symbol, String order_id, Wallet wallet}) : super([wallet]) {
    _symbol = symbol;
    _order_id = order_id;
  }

  @override
  Map to_map() => LinkedHashMap.from({'refid': _order_id, 'sender': wallet.address, 'symbol': _symbol});

  @override
  Map to_sign_map() => {'refid': _order_id, 'symbol': _symbol};

  @override
  CancelOrder to_protobuf() {
    var pb = CancelOrder()
      ..sender = decode_address(wallet.address)
      ..refid = _order_id
      ..symbol = _symbol;
    return pb;
  }
}

///Freeze transaction will move the amount of the tokens into a frozen state,
///in which they cannot be used for transfers or sending new orders.
///
/// Read more: [Binance Chain Docs / Amino encoding / Freeze](https://docs.binance.org/guides/concepts/encoding/amino-example.html#freeze)
///Or [Wiki of repo on GitHub](https://github.com/Tbcc-wallet/binance_chain_dart/wiki)
class FreezeMsg extends Msg {
  @override
  final AMINO_MESSAGE_TYPE = 'E774B32D';
  String _symbol;
  Decimal _amount;
  int _amount_encoded;
  FreezeMsg({String symbol, Decimal amount, Wallet wallet}) : super([wallet]) {
    _symbol = symbol;
    _amount = amount;
    _amount_encoded = (_amount * Decimal.fromInt(10.pow(8))).toInt();
  }

  @override
  Map to_map() => LinkedHashMap.from({'amount': _amount_encoded, 'from': wallet.address, 'symbol': _symbol});

  @override
  Map to_sign_map() => {'amount': _amount_encoded, 'symbol': _symbol};

  @override
  TokenFreeze to_protobuf() {
    var pb = TokenFreeze()
      ..from = decode_address(wallet.address).toList()
      ..symbol = _symbol
      ..amount = fixnum.Int64(_amount_encoded);
    return pb;
  }
}

///Unfreeze will reversely turn the amount of frozen tokens back to free state.
///
///Read more: [Binance Chain Docs / Amino encoding / Unfreeze](https://docs.binance.org/guides/concepts/encoding/amino-example.html#unfreeze)
///Or [Wiki of repo on GitHub](https://github.com/Tbcc-wallet/binance_chain_dart/wiki)
class UnFreezeMsg extends Msg {
  @override
  final AMINO_MESSAGE_TYPE = '6515FF0D';

  String _symbol;
  Decimal _amount;
  int _amount_encoded;
  UnFreezeMsg({String symbol, Decimal amount, Wallet wallet}) : super([wallet]) {
    _symbol = symbol;
    _amount = amount;
    _amount_encoded = (_amount * Decimal.fromInt(10.pow(8))).toInt();
  }

  @override
  Map to_map() => LinkedHashMap.from({'amount': _amount_encoded, 'from': wallet.address, 'symbol': _symbol});

  @override
  Map to_sign_map() => {'amount': _amount_encoded, 'symbol': _symbol};

  @override
  TokenUnfreeze to_protobuf() {
    var pb = TokenUnfreeze()
      ..from = decode_address(wallet.address).toList()
      ..symbol = _symbol
      ..amount = fixnum.Int64(_amount_encoded);
    return pb;
  }
}

///Vote transactions for proposals.
///
///Read more: [Binance Chain Docs / Amino encoding / Vote] (https://docs.binance.org/guides/concepts/encoding/amino-example.html#vote)
///Or [Wiki of repo on GitHub](https://github.com/Tbcc-wallet/binance_chain_dart/wiki)
class VoteMsg extends Msg {
  @override
  final AMINO_MESSAGE_TYPE = 'A1CADD36';

  int _proposal_id;
  int _proposal_id_encoded;
  VoteOption _vote_option;
  String _voter;

  VoteMsg(int proposal_id, VoteOption vote_option, Wallet wallet) : super([wallet]) {
    _proposal_id = proposal_id;
    _proposal_id_encoded = (proposal_id * 10.pow(8)).toInt();
    _vote_option = vote_option;
    _voter = wallet == null ? null : wallet.address;
  }

  @override
  Map to_map() => LinkedHashMap.from({'option': _vote_option.str_val, 'proposal_id': _proposal_id_encoded, 'voter': _voter});

  @override
  Map to_sign_map() => {'option': _vote_option, 'proposal_id': _proposal_id_encoded};

  @override
  Vote to_protobuf() {
    var pb = Vote()
      ..voter = decode_address(wallet.address)
      ..proposalId = fixnum.Int64(_proposal_id)
      ..option = fixnum.Int64(_vote_option.int_val);
    return pb;
  }
}
