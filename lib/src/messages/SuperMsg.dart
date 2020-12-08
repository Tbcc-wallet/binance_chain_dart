import 'dart:collection';
import 'dart:typed_data';

import 'package:binance_chain/src/messages/proto/gen/dex.pb.dart';
import 'package:binance_chain/src/utils/crypto.dart';
import 'package:binance_chain/src/messages/messages.dart';
import 'package:binance_chain/src/wallet.dart';
import 'package:decimal/decimal.dart';
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:binance_chain/binance_chain.dart';
import 'dart:convert';
import '../utils/num_utils.dart';
import 'package:convert/convert.dart';

class SuperMultiTransfer extends Msg {
  @override
  final AMINO_MESSAGE_TYPE = '2A2C87FA';
  Send compiled_msg;
  LinkedHashMap compiled_map;

  SuperMultiTransfer({
    List<Wallet> wallets,
    List<TransferV2> transfers,
    String memo,
  }) : super(wallets, memo) {
    if (transfers != null) {
      var coins = <Wallet, Map<String, int>>{};

      transfers.sort((t1, t2) {
        return t1.amount.compareTo(t2.amount);
      });

      for (var transfer in transfers) {
        transfer.amount_amino = (transfer.amount * Decimal.fromInt(10.pow(8))).toInt();
        if (coins.containsKey(transfer.from)) {
          if (coins[transfer.from].containsKey(transfer.symbol)) {
            coins[transfer.from][transfer.symbol] += transfer.amount_amino;
          } else {
            coins[transfer.from][transfer.symbol] = transfer.amount_amino;
          }
        } else {
          coins[transfer.from] = {transfer.symbol: transfer.amount_amino};
        }
      }

      var sorted_coins = coins.entries?.toList();
      sorted_coins.sort((l, r) {
        return l.key.address.compareTo(r.key.address);
      });
      compiled_map = LinkedHashMap<String, dynamic>.from({
        'inputs': [
          for (var input in sorted_coins)
            LinkedHashMap.from({
              'address': input.key.address,
              'coins': [
                for (var coin in input.value.entries.toList()..sort((l, r) => l.key.compareTo(r.key)))
                  LinkedHashMap.from(
                    {'amount': coin.value, 'denom': coin.key},
                  ),
              ]
            }),
        ]..reversed,
        'outputs': [
          for (var addr_to in {for (var t in transfers) t.addressTo})
            LinkedHashMap.from({
              'address': addr_to,
              'coins': [
                for (var coin in transfers.where((e) => e.addressTo == addr_to).toList()..sort((l, r) => l.symbol.compareTo(r.symbol)))
                  LinkedHashMap.from({
                    'amount': coin.amount_amino,
                    'denom': coin.symbol,
                  }),
              ]
            }),
        ]
      });

      var msg = Send()
        ..inputs.addAll([
          for (var input in sorted_coins)
            Send_Input()
              ..address = decode_address(input.key.address).toList()
              ..coins.addAll([
                for (var coin in input.value.entries)
                  Send_Token()
                    ..denom = coin.key
                    ..amount = fixnum.Int64(coin.value)
              ]..sort((l, r) {
                  return l.denom.compareTo(r.denom);
                }))
        ])
        ..outputs.addAll([
          for (var addr_to in {for (var t in transfers) t.addressTo})
            Send_Output()
              ..address = decode_address(addr_to).toList()
              ..coins.addAll([
                for (var coin in transfers.where((e) => e.addressTo == addr_to).toList()..sort((l, r) => l.symbol.compareTo(r.symbol)))
                  Send_Token()
                    ..denom = coin.symbol
                    ..amount = fixnum.Int64(coin.amount_amino),
              ])
        ]);

      compiled_msg = msg;
    }
  }

  SuperMultiTransfer.fromJson(Map<String, dynamic> json_, String sendJson) : super(null) {
    compiled_map = {}..addAll(json_);
    compiled_msg = Send.fromJson(sendJson);
  }

  @override
  LinkedHashMap to_map() => compiled_map;

  @override
  Send to_protobuf() => compiled_msg;
}

class TransferV2 {
  Wallet from;
  String addressTo;
  Decimal amount;
  String symbol;
  int amount_amino;
  TransferV2({
    this.from,
    this.addressTo,
    this.amount,
    this.symbol,
  });
}

class SuperStdTxMsg extends Msg {
  @override
  final AMINO_MESSAGE_TYPE = 'F0625DEE';

  @override
  final INCLUDE_AMINO_LENGTH_PREFIX = true;

  Msg _msg;
  final _source = BROADCAST_SOURCE;
  String _data;
  List<SuperSignatureMsg> _signatures = [];
  SuperStdTxMsg(this._msg, [this._data = '']) : super(_msg.wallets) {
    _signatures.addAll([for (Wallet w in _msg.wallets) SuperSignatureMsg(_msg, w)]);
  }

  void addSignature(int index, Wallet wallet) {
    _signatures.insert(index, SuperSignatureMsg(_msg, wallet));
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

  @override
  StdTx to_protobuf_with_sign(Map<String, dynamic> withJsonAndSign, Wallet wallet) {
    _msg = SuperMultiTransfer.fromJson(withJsonAndSign['transferMap'] as Map<String, dynamic>, withJsonAndSign['sendMsgJsonString']);
    _msg.memo = withJsonAndSign['memo'];
    //print(_msg.to_map());
    //print(_msg.to_protobuf().toProto3Json());
    var stdtx = StdTx()
      ..msgs.add(_msg.to_amino().toList())
      ..data = _data.codeUnits
      ..memo = withJsonAndSign['memo']
      ..source = fixnum.Int64(_source);
    _signatures.add(SuperSignatureMsg(_msg, wallet));
    if (_msg.to_map()['inputs'][0]['address'] == wallet.address) {
      _signatures.forEach((element) {
        stdtx.signatures.add(element.to_amino().toList());
      });
      withJsonAndSign['signatures'].forEach((s) {
        stdtx.signatures.add(s.cast<int>());
      });
    } else {
      withJsonAndSign['signatures'].forEach((s) {
        stdtx.signatures.add(s.cast<int>());
      });
      _signatures.forEach((element) {
        stdtx.signatures.add(element.to_amino().toList());
      });
    }

    return stdtx;
  }
}

class SuperSignatureMsg extends Msg {
  @override
  final AMINO_MESSAGE_TYPE = '';
  SuperSignature _signature;
  SuperSignature get signature => _signature;
  Wallet toSignWallet;
  SuperSignatureMsg(Msg msg, this.toSignWallet) : super([toSignWallet]) {
    _signature = SuperSignature(msg, toSignWallet);
  }

  @override
  StdSignature to_protobuf() {
    var pub_key_msg = PubKeyMsg(toSignWallet);
    var std_sig = StdSignature()
      ..sequence = fixnum.Int64(toSignWallet.sequence)
      ..accountNumber = fixnum.Int64(toSignWallet.accountNumber)
      ..pubKey = pub_key_msg.to_amino()
      ..signature = _signature.sign(toSignWallet);
    return std_sig;
  }
}

class SuperSignature {
  final Msg _msg;
  var _chain_id;
  var _data;
  var _source;
  Wallet toSignWallet;
  SuperSignature(this._msg, [this.toSignWallet, data]) {
    _chain_id = toSignWallet == null ? _msg.wallet.chainId : toSignWallet.chainId;

    _data = data;
    _source = BROADCAST_SOURCE;
  }

  String to_json() => json.encode(LinkedHashMap.from({
        'account_number': toSignWallet.accountNumber.toString(),
        'chain_id': _chain_id,
        'data': _data,
        'memo': _msg.memo,
        'msgs': [_msg.to_map()],
        'sequence': toSignWallet.sequence.toString(),
        'source': _source.toString()
      }));

  Uint8List to_bytes_json(Wallet signwallet) => Uint8List.fromList(utf8.encode(to_json()));

  Uint8List sign(Wallet signwallet) {
    //generate string to sign
    var json_bytes = to_bytes_json(signwallet);

    var signed = signwallet.sign_message(json_bytes);
    return signed;
  }
}
