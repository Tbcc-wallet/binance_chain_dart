///
//  Generated code. Do not modify.
//  source: dex.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'types.pb.dart' as $3;

class StdTx extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StdTx', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgs', $pb.PbFieldType.PY)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signatures', $pb.PbFieldType.PY)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memo')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  StdTx._() : super();
  factory StdTx({
    $core.Iterable<$core.List<$core.int>>? msgs,
    $core.Iterable<$core.List<$core.int>>? signatures,
    $core.String? memo,
    $fixnum.Int64? source,
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (msgs != null) {
      _result.msgs.addAll(msgs);
    }
    if (signatures != null) {
      _result.signatures.addAll(signatures);
    }
    if (memo != null) {
      _result.memo = memo;
    }
    if (source != null) {
      _result.source = source;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory StdTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StdTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StdTx clone() => StdTx()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StdTx copyWith(void Function(StdTx) updates) => super.copyWith((message) => updates(message as StdTx)) as StdTx; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StdTx create() => StdTx._();
  StdTx createEmptyInstance() => create();
  static $pb.PbList<StdTx> createRepeated() => $pb.PbList<StdTx>();
  @$core.pragma('dart2js:noInline')
  static StdTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StdTx>(create);
  static StdTx? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get msgs => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get signatures => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get memo => $_getSZ(2);
  @$pb.TagNumber(3)
  set memo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMemo() => $_has(2);
  @$pb.TagNumber(3)
  void clearMemo() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get source => $_getI64(3);
  @$pb.TagNumber(4)
  set source($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSource() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get data => $_getN(4);
  @$pb.TagNumber(5)
  set data($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasData() => $_has(4);
  @$pb.TagNumber(5)
  void clearData() => clearField(5);
}

class StdSignature_PubKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StdSignature.PubKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StdSignature_PubKey._() : super();
  factory StdSignature_PubKey() => create();
  factory StdSignature_PubKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StdSignature_PubKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StdSignature_PubKey clone() => StdSignature_PubKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StdSignature_PubKey copyWith(void Function(StdSignature_PubKey) updates) => super.copyWith((message) => updates(message as StdSignature_PubKey)) as StdSignature_PubKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StdSignature_PubKey create() => StdSignature_PubKey._();
  StdSignature_PubKey createEmptyInstance() => create();
  static $pb.PbList<StdSignature_PubKey> createRepeated() => $pb.PbList<StdSignature_PubKey>();
  @$core.pragma('dart2js:noInline')
  static StdSignature_PubKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StdSignature_PubKey>(create);
  static StdSignature_PubKey? _defaultInstance;
}

class StdSignature extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StdSignature', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.OY)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountNumber')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequence')
    ..hasRequiredFields = false
  ;

  StdSignature._() : super();
  factory StdSignature({
    $core.List<$core.int>? pubKey,
    $core.List<$core.int>? signature,
    $fixnum.Int64? accountNumber,
    $fixnum.Int64? sequence,
  }) {
    final _result = create();
    if (pubKey != null) {
      _result.pubKey = pubKey;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    if (accountNumber != null) {
      _result.accountNumber = accountNumber;
    }
    if (sequence != null) {
      _result.sequence = sequence;
    }
    return _result;
  }
  factory StdSignature.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StdSignature.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StdSignature clone() => StdSignature()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StdSignature copyWith(void Function(StdSignature) updates) => super.copyWith((message) => updates(message as StdSignature)) as StdSignature; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StdSignature create() => StdSignature._();
  StdSignature createEmptyInstance() => create();
  static $pb.PbList<StdSignature> createRepeated() => $pb.PbList<StdSignature>();
  @$core.pragma('dart2js:noInline')
  static StdSignature getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StdSignature>(create);
  static StdSignature? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get pubKey => $_getN(0);
  @$pb.TagNumber(1)
  set pubKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get accountNumber => $_getI64(2);
  @$pb.TagNumber(3)
  set accountNumber($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountNumber() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get sequence => $_getI64(3);
  @$pb.TagNumber(4)
  set sequence($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSequence() => $_has(3);
  @$pb.TagNumber(4)
  void clearSequence() => clearField(4);
}

class NewOrder extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewOrder', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ordertype')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'side')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeinforce')
    ..hasRequiredFields = false
  ;

  NewOrder._() : super();
  factory NewOrder({
    $core.List<$core.int>? sender,
    $core.String? id,
    $core.String? symbol,
    $fixnum.Int64? ordertype,
    $fixnum.Int64? side,
    $fixnum.Int64? price,
    $fixnum.Int64? quantity,
    $fixnum.Int64? timeinforce,
  }) {
    final _result = create();
    if (sender != null) {
      _result.sender = sender;
    }
    if (id != null) {
      _result.id = id;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (ordertype != null) {
      _result.ordertype = ordertype;
    }
    if (side != null) {
      _result.side = side;
    }
    if (price != null) {
      _result.price = price;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (timeinforce != null) {
      _result.timeinforce = timeinforce;
    }
    return _result;
  }
  factory NewOrder.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewOrder.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewOrder clone() => NewOrder()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewOrder copyWith(void Function(NewOrder) updates) => super.copyWith((message) => updates(message as NewOrder)) as NewOrder; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewOrder create() => NewOrder._();
  NewOrder createEmptyInstance() => create();
  static $pb.PbList<NewOrder> createRepeated() => $pb.PbList<NewOrder>();
  @$core.pragma('dart2js:noInline')
  static NewOrder getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewOrder>(create);
  static NewOrder? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get sender => $_getN(0);
  @$pb.TagNumber(1)
  set sender($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get symbol => $_getSZ(2);
  @$pb.TagNumber(3)
  set symbol($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbol() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get ordertype => $_getI64(3);
  @$pb.TagNumber(4)
  set ordertype($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrdertype() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrdertype() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get side => $_getI64(4);
  @$pb.TagNumber(5)
  set side($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSide() => $_has(4);
  @$pb.TagNumber(5)
  void clearSide() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get price => $_getI64(5);
  @$pb.TagNumber(6)
  set price($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearPrice() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get quantity => $_getI64(6);
  @$pb.TagNumber(7)
  set quantity($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasQuantity() => $_has(6);
  @$pb.TagNumber(7)
  void clearQuantity() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get timeinforce => $_getI64(7);
  @$pb.TagNumber(8)
  set timeinforce($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimeinforce() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimeinforce() => clearField(8);
}

class CancelOrder extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CancelOrder', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refid')
    ..hasRequiredFields = false
  ;

  CancelOrder._() : super();
  factory CancelOrder({
    $core.List<$core.int>? sender,
    $core.String? symbol,
    $core.String? refid,
  }) {
    final _result = create();
    if (sender != null) {
      _result.sender = sender;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (refid != null) {
      _result.refid = refid;
    }
    return _result;
  }
  factory CancelOrder.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelOrder.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelOrder clone() => CancelOrder()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelOrder copyWith(void Function(CancelOrder) updates) => super.copyWith((message) => updates(message as CancelOrder)) as CancelOrder; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelOrder create() => CancelOrder._();
  CancelOrder createEmptyInstance() => create();
  static $pb.PbList<CancelOrder> createRepeated() => $pb.PbList<CancelOrder>();
  @$core.pragma('dart2js:noInline')
  static CancelOrder getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelOrder>(create);
  static CancelOrder? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get sender => $_getN(0);
  @$pb.TagNumber(1)
  set sender($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get refid => $_getSZ(2);
  @$pb.TagNumber(3)
  set refid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRefid() => $_has(2);
  @$pb.TagNumber(3)
  void clearRefid() => clearField(3);
}

class TokenFreeze extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TokenFreeze', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..hasRequiredFields = false
  ;

  TokenFreeze._() : super();
  factory TokenFreeze({
    $core.List<$core.int>? from,
    $core.String? symbol,
    $fixnum.Int64? amount,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory TokenFreeze.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenFreeze.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenFreeze clone() => TokenFreeze()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenFreeze copyWith(void Function(TokenFreeze) updates) => super.copyWith((message) => updates(message as TokenFreeze)) as TokenFreeze; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenFreeze create() => TokenFreeze._();
  TokenFreeze createEmptyInstance() => create();
  static $pb.PbList<TokenFreeze> createRepeated() => $pb.PbList<TokenFreeze>();
  @$core.pragma('dart2js:noInline')
  static TokenFreeze getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenFreeze>(create);
  static TokenFreeze? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);
}

class TokenUnfreeze extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TokenUnfreeze', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..hasRequiredFields = false
  ;

  TokenUnfreeze._() : super();
  factory TokenUnfreeze({
    $core.List<$core.int>? from,
    $core.String? symbol,
    $fixnum.Int64? amount,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory TokenUnfreeze.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenUnfreeze.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenUnfreeze clone() => TokenUnfreeze()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenUnfreeze copyWith(void Function(TokenUnfreeze) updates) => super.copyWith((message) => updates(message as TokenUnfreeze)) as TokenUnfreeze; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenUnfreeze create() => TokenUnfreeze._();
  TokenUnfreeze createEmptyInstance() => create();
  static $pb.PbList<TokenUnfreeze> createRepeated() => $pb.PbList<TokenUnfreeze>();
  @$core.pragma('dart2js:noInline')
  static TokenUnfreeze getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenUnfreeze>(create);
  static TokenUnfreeze? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);
}

class Send_Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Send.Token', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'denom')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..hasRequiredFields = false
  ;

  Send_Token._() : super();
  factory Send_Token({
    $core.String? denom,
    $fixnum.Int64? amount,
  }) {
    final _result = create();
    if (denom != null) {
      _result.denom = denom;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory Send_Token.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Send_Token.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Send_Token clone() => Send_Token()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Send_Token copyWith(void Function(Send_Token) updates) => super.copyWith((message) => updates(message as Send_Token)) as Send_Token; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Send_Token create() => Send_Token._();
  Send_Token createEmptyInstance() => create();
  static $pb.PbList<Send_Token> createRepeated() => $pb.PbList<Send_Token>();
  @$core.pragma('dart2js:noInline')
  static Send_Token getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Send_Token>(create);
  static Send_Token? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get denom => $_getSZ(0);
  @$pb.TagNumber(1)
  set denom($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDenom() => $_has(0);
  @$pb.TagNumber(1)
  void clearDenom() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class Send_Input extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Send.Input', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', $pb.PbFieldType.OY)
    ..pc<Send_Token>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coins', $pb.PbFieldType.PM, subBuilder: Send_Token.create)
    ..hasRequiredFields = false
  ;

  Send_Input._() : super();
  factory Send_Input({
    $core.List<$core.int>? address,
    $core.Iterable<Send_Token>? coins,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (coins != null) {
      _result.coins.addAll(coins);
    }
    return _result;
  }
  factory Send_Input.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Send_Input.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Send_Input clone() => Send_Input()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Send_Input copyWith(void Function(Send_Input) updates) => super.copyWith((message) => updates(message as Send_Input)) as Send_Input; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Send_Input create() => Send_Input._();
  Send_Input createEmptyInstance() => create();
  static $pb.PbList<Send_Input> createRepeated() => $pb.PbList<Send_Input>();
  @$core.pragma('dart2js:noInline')
  static Send_Input getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Send_Input>(create);
  static Send_Input? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Send_Token> get coins => $_getList(1);
}

class Send_Output extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Send.Output', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', $pb.PbFieldType.OY)
    ..pc<Send_Token>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coins', $pb.PbFieldType.PM, subBuilder: Send_Token.create)
    ..hasRequiredFields = false
  ;

  Send_Output._() : super();
  factory Send_Output({
    $core.List<$core.int>? address,
    $core.Iterable<Send_Token>? coins,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (coins != null) {
      _result.coins.addAll(coins);
    }
    return _result;
  }
  factory Send_Output.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Send_Output.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Send_Output clone() => Send_Output()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Send_Output copyWith(void Function(Send_Output) updates) => super.copyWith((message) => updates(message as Send_Output)) as Send_Output; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Send_Output create() => Send_Output._();
  Send_Output createEmptyInstance() => create();
  static $pb.PbList<Send_Output> createRepeated() => $pb.PbList<Send_Output>();
  @$core.pragma('dart2js:noInline')
  static Send_Output getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Send_Output>(create);
  static Send_Output? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Send_Token> get coins => $_getList(1);
}

class Send extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Send', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..pc<Send_Input>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputs', $pb.PbFieldType.PM, subBuilder: Send_Input.create)
    ..pc<Send_Output>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputs', $pb.PbFieldType.PM, subBuilder: Send_Output.create)
    ..hasRequiredFields = false
  ;

  Send._() : super();
  factory Send({
    $core.Iterable<Send_Input>? inputs,
    $core.Iterable<Send_Output>? outputs,
  }) {
    final _result = create();
    if (inputs != null) {
      _result.inputs.addAll(inputs);
    }
    if (outputs != null) {
      _result.outputs.addAll(outputs);
    }
    return _result;
  }
  factory Send.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Send.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Send clone() => Send()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Send copyWith(void Function(Send) updates) => super.copyWith((message) => updates(message as Send)) as Send; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Send create() => Send._();
  Send createEmptyInstance() => create();
  static $pb.PbList<Send> createRepeated() => $pb.PbList<Send>();
  @$core.pragma('dart2js:noInline')
  static Send getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Send>(create);
  static Send? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Send_Input> get inputs => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Send_Output> get outputs => $_getList(1);
}

class Vote extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Vote', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'proposalId')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'voter', $pb.PbFieldType.OY)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'option')
    ..hasRequiredFields = false
  ;

  Vote._() : super();
  factory Vote({
    $fixnum.Int64? proposalId,
    $core.List<$core.int>? voter,
    $fixnum.Int64? option,
  }) {
    final _result = create();
    if (proposalId != null) {
      _result.proposalId = proposalId;
    }
    if (voter != null) {
      _result.voter = voter;
    }
    if (option != null) {
      _result.option = option;
    }
    return _result;
  }
  factory Vote.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Vote.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Vote clone() => Vote()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Vote copyWith(void Function(Vote) updates) => super.copyWith((message) => updates(message as Vote)) as Vote; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Vote create() => Vote._();
  Vote createEmptyInstance() => create();
  static $pb.PbList<Vote> createRepeated() => $pb.PbList<Vote>();
  @$core.pragma('dart2js:noInline')
  static Vote getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Vote>(create);
  static Vote? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get proposalId => $_getI64(0);
  @$pb.TagNumber(1)
  set proposalId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProposalId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProposalId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get voter => $_getN(1);
  @$pb.TagNumber(2)
  set voter($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVoter() => $_has(1);
  @$pb.TagNumber(2)
  void clearVoter() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get option => $_getI64(2);
  @$pb.TagNumber(3)
  set option($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOption() => $_has(2);
  @$pb.TagNumber(3)
  void clearOption() => clearField(3);
}

class Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Token', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'denom')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..hasRequiredFields = false
  ;

  Token._() : super();
  factory Token({
    $core.String? denom,
    $fixnum.Int64? amount,
  }) {
    final _result = create();
    if (denom != null) {
      _result.denom = denom;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory Token.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Token.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Token clone() => Token()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Token copyWith(void Function(Token) updates) => super.copyWith((message) => updates(message as Token)) as Token; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Token create() => Token._();
  Token createEmptyInstance() => create();
  static $pb.PbList<Token> createRepeated() => $pb.PbList<Token>();
  @$core.pragma('dart2js:noInline')
  static Token getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Token>(create);
  static Token? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get denom => $_getSZ(0);
  @$pb.TagNumber(1)
  set denom($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDenom() => $_has(0);
  @$pb.TagNumber(1)
  void clearDenom() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class AppAccount_baseAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppAccount.baseAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', $pb.PbFieldType.OY)
    ..pc<Token>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coins', $pb.PbFieldType.PM, subBuilder: Token.create)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', $pb.PbFieldType.OY)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountNumber')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequence')
    ..hasRequiredFields = false
  ;

  AppAccount_baseAccount._() : super();
  factory AppAccount_baseAccount({
    $core.List<$core.int>? address,
    $core.Iterable<Token>? coins,
    $core.List<$core.int>? publicKey,
    $fixnum.Int64? accountNumber,
    $fixnum.Int64? sequence,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (coins != null) {
      _result.coins.addAll(coins);
    }
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    if (accountNumber != null) {
      _result.accountNumber = accountNumber;
    }
    if (sequence != null) {
      _result.sequence = sequence;
    }
    return _result;
  }
  factory AppAccount_baseAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppAccount_baseAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppAccount_baseAccount clone() => AppAccount_baseAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppAccount_baseAccount copyWith(void Function(AppAccount_baseAccount) updates) => super.copyWith((message) => updates(message as AppAccount_baseAccount)) as AppAccount_baseAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppAccount_baseAccount create() => AppAccount_baseAccount._();
  AppAccount_baseAccount createEmptyInstance() => create();
  static $pb.PbList<AppAccount_baseAccount> createRepeated() => $pb.PbList<AppAccount_baseAccount>();
  @$core.pragma('dart2js:noInline')
  static AppAccount_baseAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppAccount_baseAccount>(create);
  static AppAccount_baseAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Token> get coins => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get publicKey => $_getN(2);
  @$pb.TagNumber(3)
  set publicKey($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPublicKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearPublicKey() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get accountNumber => $_getI64(3);
  @$pb.TagNumber(4)
  set accountNumber($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccountNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountNumber() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get sequence => $_getI64(4);
  @$pb.TagNumber(5)
  set sequence($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSequence() => $_has(4);
  @$pb.TagNumber(5)
  void clearSequence() => clearField(5);
}

class AppAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOM<AppAccount_baseAccount>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'base', subBuilder: AppAccount_baseAccount.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<Token>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frozen', $pb.PbFieldType.PM, subBuilder: Token.create)
    ..pc<Token>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locked', $pb.PbFieldType.PM, subBuilder: Token.create)
    ..hasRequiredFields = false
  ;

  AppAccount._() : super();
  factory AppAccount({
    AppAccount_baseAccount? base,
    $core.String? name,
    $core.Iterable<Token>? frozen,
    $core.Iterable<Token>? locked,
  }) {
    final _result = create();
    if (base != null) {
      _result.base = base;
    }
    if (name != null) {
      _result.name = name;
    }
    if (frozen != null) {
      _result.frozen.addAll(frozen);
    }
    if (locked != null) {
      _result.locked.addAll(locked);
    }
    return _result;
  }
  factory AppAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppAccount clone() => AppAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppAccount copyWith(void Function(AppAccount) updates) => super.copyWith((message) => updates(message as AppAccount)) as AppAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppAccount create() => AppAccount._();
  AppAccount createEmptyInstance() => create();
  static $pb.PbList<AppAccount> createRepeated() => $pb.PbList<AppAccount>();
  @$core.pragma('dart2js:noInline')
  static AppAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppAccount>(create);
  static AppAccount? _defaultInstance;

  @$pb.TagNumber(1)
  AppAccount_baseAccount get base => $_getN(0);
  @$pb.TagNumber(1)
  set base(AppAccount_baseAccount v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  AppAccount_baseAccount ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Token> get frozen => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<Token> get locked => $_getList(3);
}

class AtomicSwapInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AtomicSwapInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', $pb.PbFieldType.OY)
    ..pc<Token>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outAmount', $pb.PbFieldType.PM, subBuilder: Token.create)
    ..pc<Token>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inAmount', $pb.PbFieldType.PM, subBuilder: Token.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expectedIncome')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipientOtherChain', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'randomNumberHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'randomNumber', $pb.PbFieldType.OY)
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'crossChain')
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expireHeight')
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index')
    ..aInt64(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closedTime')
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AtomicSwapInfo._() : super();
  factory AtomicSwapInfo({
    $core.List<$core.int>? from,
    $core.List<$core.int>? to,
    $core.Iterable<Token>? outAmount,
    $core.Iterable<Token>? inAmount,
    $core.String? expectedIncome,
    $core.List<$core.int>? recipientOtherChain,
    $core.List<$core.int>? randomNumberHash,
    $core.List<$core.int>? randomNumber,
    $fixnum.Int64? timestamp,
    $core.bool? crossChain,
    $fixnum.Int64? expireHeight,
    $fixnum.Int64? index,
    $fixnum.Int64? closedTime,
    $core.int? status,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (to != null) {
      _result.to = to;
    }
    if (outAmount != null) {
      _result.outAmount.addAll(outAmount);
    }
    if (inAmount != null) {
      _result.inAmount.addAll(inAmount);
    }
    if (expectedIncome != null) {
      _result.expectedIncome = expectedIncome;
    }
    if (recipientOtherChain != null) {
      _result.recipientOtherChain = recipientOtherChain;
    }
    if (randomNumberHash != null) {
      _result.randomNumberHash = randomNumberHash;
    }
    if (randomNumber != null) {
      _result.randomNumber = randomNumber;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (crossChain != null) {
      _result.crossChain = crossChain;
    }
    if (expireHeight != null) {
      _result.expireHeight = expireHeight;
    }
    if (index != null) {
      _result.index = index;
    }
    if (closedTime != null) {
      _result.closedTime = closedTime;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory AtomicSwapInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AtomicSwapInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AtomicSwapInfo clone() => AtomicSwapInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AtomicSwapInfo copyWith(void Function(AtomicSwapInfo) updates) => super.copyWith((message) => updates(message as AtomicSwapInfo)) as AtomicSwapInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AtomicSwapInfo create() => AtomicSwapInfo._();
  AtomicSwapInfo createEmptyInstance() => create();
  static $pb.PbList<AtomicSwapInfo> createRepeated() => $pb.PbList<AtomicSwapInfo>();
  @$core.pragma('dart2js:noInline')
  static AtomicSwapInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AtomicSwapInfo>(create);
  static AtomicSwapInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get to => $_getN(1);
  @$pb.TagNumber(2)
  set to($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTo() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Token> get outAmount => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<Token> get inAmount => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get expectedIncome => $_getSZ(4);
  @$pb.TagNumber(5)
  set expectedIncome($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExpectedIncome() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpectedIncome() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get recipientOtherChain => $_getN(5);
  @$pb.TagNumber(6)
  set recipientOtherChain($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRecipientOtherChain() => $_has(5);
  @$pb.TagNumber(6)
  void clearRecipientOtherChain() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get randomNumberHash => $_getN(6);
  @$pb.TagNumber(7)
  set randomNumberHash($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRandomNumberHash() => $_has(6);
  @$pb.TagNumber(7)
  void clearRandomNumberHash() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get randomNumber => $_getN(7);
  @$pb.TagNumber(8)
  set randomNumber($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRandomNumber() => $_has(7);
  @$pb.TagNumber(8)
  void clearRandomNumber() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get timestamp => $_getI64(8);
  @$pb.TagNumber(9)
  set timestamp($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTimestamp() => $_has(8);
  @$pb.TagNumber(9)
  void clearTimestamp() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get crossChain => $_getBF(9);
  @$pb.TagNumber(10)
  set crossChain($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCrossChain() => $_has(9);
  @$pb.TagNumber(10)
  void clearCrossChain() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get expireHeight => $_getI64(10);
  @$pb.TagNumber(11)
  set expireHeight($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasExpireHeight() => $_has(10);
  @$pb.TagNumber(11)
  void clearExpireHeight() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get index => $_getI64(11);
  @$pb.TagNumber(12)
  set index($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasIndex() => $_has(11);
  @$pb.TagNumber(12)
  void clearIndex() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get closedTime => $_getI64(12);
  @$pb.TagNumber(13)
  set closedTime($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasClosedTime() => $_has(12);
  @$pb.TagNumber(13)
  void clearClosedTime() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get status => $_getIZ(13);
  @$pb.TagNumber(14)
  set status($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasStatus() => $_has(13);
  @$pb.TagNumber(14)
  void clearStatus() => clearField(14);
}

class TokenInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TokenInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalSymbol')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSupply')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner', $pb.PbFieldType.OY)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mintable')
    ..hasRequiredFields = false
  ;

  TokenInfo._() : super();
  factory TokenInfo({
    $core.String? name,
    $core.String? symbol,
    $core.String? originalSymbol,
    $fixnum.Int64? totalSupply,
    $core.List<$core.int>? owner,
    $core.bool? mintable,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (originalSymbol != null) {
      _result.originalSymbol = originalSymbol;
    }
    if (totalSupply != null) {
      _result.totalSupply = totalSupply;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (mintable != null) {
      _result.mintable = mintable;
    }
    return _result;
  }
  factory TokenInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenInfo clone() => TokenInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenInfo copyWith(void Function(TokenInfo) updates) => super.copyWith((message) => updates(message as TokenInfo)) as TokenInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenInfo create() => TokenInfo._();
  TokenInfo createEmptyInstance() => create();
  static $pb.PbList<TokenInfo> createRepeated() => $pb.PbList<TokenInfo>();
  @$core.pragma('dart2js:noInline')
  static TokenInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenInfo>(create);
  static TokenInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get originalSymbol => $_getSZ(2);
  @$pb.TagNumber(3)
  set originalSymbol($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOriginalSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearOriginalSymbol() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get totalSupply => $_getI64(3);
  @$pb.TagNumber(4)
  set totalSupply($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalSupply() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalSupply() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get owner => $_getN(4);
  @$pb.TagNumber(5)
  set owner($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOwner() => $_has(4);
  @$pb.TagNumber(5)
  void clearOwner() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get mintable => $_getBF(5);
  @$pb.TagNumber(6)
  set mintable($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMintable() => $_has(5);
  @$pb.TagNumber(6)
  void clearMintable() => clearField(6);
}

class MiniTokenInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MiniTokenInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'originalSymbol')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSupply')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner', $pb.PbFieldType.OY)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mintable')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenType', $pb.PbFieldType.O3)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenUri')
    ..hasRequiredFields = false
  ;

  MiniTokenInfo._() : super();
  factory MiniTokenInfo({
    $core.String? name,
    $core.String? symbol,
    $core.String? originalSymbol,
    $fixnum.Int64? totalSupply,
    $core.List<$core.int>? owner,
    $core.bool? mintable,
    $core.int? tokenType,
    $core.String? tokenUri,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (originalSymbol != null) {
      _result.originalSymbol = originalSymbol;
    }
    if (totalSupply != null) {
      _result.totalSupply = totalSupply;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (mintable != null) {
      _result.mintable = mintable;
    }
    if (tokenType != null) {
      _result.tokenType = tokenType;
    }
    if (tokenUri != null) {
      _result.tokenUri = tokenUri;
    }
    return _result;
  }
  factory MiniTokenInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MiniTokenInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MiniTokenInfo clone() => MiniTokenInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MiniTokenInfo copyWith(void Function(MiniTokenInfo) updates) => super.copyWith((message) => updates(message as MiniTokenInfo)) as MiniTokenInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MiniTokenInfo create() => MiniTokenInfo._();
  MiniTokenInfo createEmptyInstance() => create();
  static $pb.PbList<MiniTokenInfo> createRepeated() => $pb.PbList<MiniTokenInfo>();
  @$core.pragma('dart2js:noInline')
  static MiniTokenInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MiniTokenInfo>(create);
  static MiniTokenInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get originalSymbol => $_getSZ(2);
  @$pb.TagNumber(3)
  set originalSymbol($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOriginalSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearOriginalSymbol() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get totalSupply => $_getI64(3);
  @$pb.TagNumber(4)
  set totalSupply($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalSupply() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalSupply() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get owner => $_getN(4);
  @$pb.TagNumber(5)
  set owner($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOwner() => $_has(4);
  @$pb.TagNumber(5)
  void clearOwner() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get mintable => $_getBF(5);
  @$pb.TagNumber(6)
  set mintable($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMintable() => $_has(5);
  @$pb.TagNumber(6)
  void clearMintable() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get tokenType => $_getIZ(6);
  @$pb.TagNumber(7)
  set tokenType($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTokenType() => $_has(6);
  @$pb.TagNumber(7)
  void clearTokenType() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get tokenUri => $_getSZ(7);
  @$pb.TagNumber(8)
  set tokenUri($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTokenUri() => $_has(7);
  @$pb.TagNumber(8)
  void clearTokenUri() => clearField(8);
}

class DexFeeParam_DexFeeField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DexFeeParam.DexFeeField', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeName')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeValue')
    ..hasRequiredFields = false
  ;

  DexFeeParam_DexFeeField._() : super();
  factory DexFeeParam_DexFeeField({
    $core.String? feeName,
    $fixnum.Int64? feeValue,
  }) {
    final _result = create();
    if (feeName != null) {
      _result.feeName = feeName;
    }
    if (feeValue != null) {
      _result.feeValue = feeValue;
    }
    return _result;
  }
  factory DexFeeParam_DexFeeField.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DexFeeParam_DexFeeField.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DexFeeParam_DexFeeField clone() => DexFeeParam_DexFeeField()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DexFeeParam_DexFeeField copyWith(void Function(DexFeeParam_DexFeeField) updates) => super.copyWith((message) => updates(message as DexFeeParam_DexFeeField)) as DexFeeParam_DexFeeField; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DexFeeParam_DexFeeField create() => DexFeeParam_DexFeeField._();
  DexFeeParam_DexFeeField createEmptyInstance() => create();
  static $pb.PbList<DexFeeParam_DexFeeField> createRepeated() => $pb.PbList<DexFeeParam_DexFeeField>();
  @$core.pragma('dart2js:noInline')
  static DexFeeParam_DexFeeField getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DexFeeParam_DexFeeField>(create);
  static DexFeeParam_DexFeeField? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get feeName => $_getSZ(0);
  @$pb.TagNumber(1)
  set feeName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeeName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeeName() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get feeValue => $_getI64(1);
  @$pb.TagNumber(2)
  set feeValue($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFeeValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearFeeValue() => clearField(2);
}

class DexFeeParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DexFeeParam', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..pc<DexFeeParam_DexFeeField>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dexFeeFields', $pb.PbFieldType.PM, subBuilder: DexFeeParam_DexFeeField.create)
    ..hasRequiredFields = false
  ;

  DexFeeParam._() : super();
  factory DexFeeParam({
    $core.Iterable<DexFeeParam_DexFeeField>? dexFeeFields,
  }) {
    final _result = create();
    if (dexFeeFields != null) {
      _result.dexFeeFields.addAll(dexFeeFields);
    }
    return _result;
  }
  factory DexFeeParam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DexFeeParam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DexFeeParam clone() => DexFeeParam()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DexFeeParam copyWith(void Function(DexFeeParam) updates) => super.copyWith((message) => updates(message as DexFeeParam)) as DexFeeParam; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DexFeeParam create() => DexFeeParam._();
  DexFeeParam createEmptyInstance() => create();
  static $pb.PbList<DexFeeParam> createRepeated() => $pb.PbList<DexFeeParam>();
  @$core.pragma('dart2js:noInline')
  static DexFeeParam getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DexFeeParam>(create);
  static DexFeeParam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DexFeeParam_DexFeeField> get dexFeeFields => $_getList(0);
}

class FixedFeeParams extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FixedFeeParams', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgType')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeFor', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  FixedFeeParams._() : super();
  factory FixedFeeParams({
    $core.String? msgType,
    $fixnum.Int64? fee,
    $core.int? feeFor,
  }) {
    final _result = create();
    if (msgType != null) {
      _result.msgType = msgType;
    }
    if (fee != null) {
      _result.fee = fee;
    }
    if (feeFor != null) {
      _result.feeFor = feeFor;
    }
    return _result;
  }
  factory FixedFeeParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FixedFeeParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FixedFeeParams clone() => FixedFeeParams()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FixedFeeParams copyWith(void Function(FixedFeeParams) updates) => super.copyWith((message) => updates(message as FixedFeeParams)) as FixedFeeParams; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FixedFeeParams create() => FixedFeeParams._();
  FixedFeeParams createEmptyInstance() => create();
  static $pb.PbList<FixedFeeParams> createRepeated() => $pb.PbList<FixedFeeParams>();
  @$core.pragma('dart2js:noInline')
  static FixedFeeParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FixedFeeParams>(create);
  static FixedFeeParams? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msgType => $_getSZ(0);
  @$pb.TagNumber(1)
  set msgType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get fee => $_getI64(1);
  @$pb.TagNumber(2)
  set fee($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFee() => $_has(1);
  @$pb.TagNumber(2)
  void clearFee() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get feeFor => $_getIZ(2);
  @$pb.TagNumber(3)
  set feeFor($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFeeFor() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeeFor() => clearField(3);
}

class TransferFeeParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransferFeeParam', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOM<FixedFeeParams>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fixedFeeParams', subBuilder: FixedFeeParams.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multiTransferFee')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lowerLimitAsMulti')
    ..hasRequiredFields = false
  ;

  TransferFeeParam._() : super();
  factory TransferFeeParam({
    FixedFeeParams? fixedFeeParams,
    $fixnum.Int64? multiTransferFee,
    $fixnum.Int64? lowerLimitAsMulti,
  }) {
    final _result = create();
    if (fixedFeeParams != null) {
      _result.fixedFeeParams = fixedFeeParams;
    }
    if (multiTransferFee != null) {
      _result.multiTransferFee = multiTransferFee;
    }
    if (lowerLimitAsMulti != null) {
      _result.lowerLimitAsMulti = lowerLimitAsMulti;
    }
    return _result;
  }
  factory TransferFeeParam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransferFeeParam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransferFeeParam clone() => TransferFeeParam()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransferFeeParam copyWith(void Function(TransferFeeParam) updates) => super.copyWith((message) => updates(message as TransferFeeParam)) as TransferFeeParam; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransferFeeParam create() => TransferFeeParam._();
  TransferFeeParam createEmptyInstance() => create();
  static $pb.PbList<TransferFeeParam> createRepeated() => $pb.PbList<TransferFeeParam>();
  @$core.pragma('dart2js:noInline')
  static TransferFeeParam getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransferFeeParam>(create);
  static TransferFeeParam? _defaultInstance;

  @$pb.TagNumber(1)
  FixedFeeParams get fixedFeeParams => $_getN(0);
  @$pb.TagNumber(1)
  set fixedFeeParams(FixedFeeParams v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFixedFeeParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearFixedFeeParams() => clearField(1);
  @$pb.TagNumber(1)
  FixedFeeParams ensureFixedFeeParams() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get multiTransferFee => $_getI64(1);
  @$pb.TagNumber(2)
  set multiTransferFee($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMultiTransferFee() => $_has(1);
  @$pb.TagNumber(2)
  void clearMultiTransferFee() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lowerLimitAsMulti => $_getI64(2);
  @$pb.TagNumber(3)
  set lowerLimitAsMulti($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLowerLimitAsMulti() => $_has(2);
  @$pb.TagNumber(3)
  void clearLowerLimitAsMulti() => clearField(3);
}

class ResultBroadcastTx extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResultBroadcastTx', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'log')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ResultBroadcastTx._() : super();
  factory ResultBroadcastTx({
    $core.int? code,
    $core.List<$core.int>? data,
    $core.String? log,
    $core.List<$core.int>? hash,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (data != null) {
      _result.data = data;
    }
    if (log != null) {
      _result.log = log;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    return _result;
  }
  factory ResultBroadcastTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultBroadcastTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResultBroadcastTx clone() => ResultBroadcastTx()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResultBroadcastTx copyWith(void Function(ResultBroadcastTx) updates) => super.copyWith((message) => updates(message as ResultBroadcastTx)) as ResultBroadcastTx; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultBroadcastTx create() => ResultBroadcastTx._();
  ResultBroadcastTx createEmptyInstance() => create();
  static $pb.PbList<ResultBroadcastTx> createRepeated() => $pb.PbList<ResultBroadcastTx>();
  @$core.pragma('dart2js:noInline')
  static ResultBroadcastTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultBroadcastTx>(create);
  static ResultBroadcastTx? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get log => $_getSZ(2);
  @$pb.TagNumber(3)
  set log($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLog() => $_has(2);
  @$pb.TagNumber(3)
  void clearLog() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get hash => $_getN(3);
  @$pb.TagNumber(4)
  set hash($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearHash() => clearField(4);
}

class ResultBroadcastTxCommit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResultBroadcastTxCommit', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOM<$3.ResponseCheckTx>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'checkTx', subBuilder: $3.ResponseCheckTx.create)
    ..aOM<$3.ResponseDeliverTx>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deliverTx', subBuilder: $3.ResponseDeliverTx.create)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash', $pb.PbFieldType.OY)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height')
    ..hasRequiredFields = false
  ;

  ResultBroadcastTxCommit._() : super();
  factory ResultBroadcastTxCommit({
    $3.ResponseCheckTx? checkTx,
    $3.ResponseDeliverTx? deliverTx,
    $core.List<$core.int>? hash,
    $fixnum.Int64? height,
  }) {
    final _result = create();
    if (checkTx != null) {
      _result.checkTx = checkTx;
    }
    if (deliverTx != null) {
      _result.deliverTx = deliverTx;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    if (height != null) {
      _result.height = height;
    }
    return _result;
  }
  factory ResultBroadcastTxCommit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultBroadcastTxCommit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResultBroadcastTxCommit clone() => ResultBroadcastTxCommit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResultBroadcastTxCommit copyWith(void Function(ResultBroadcastTxCommit) updates) => super.copyWith((message) => updates(message as ResultBroadcastTxCommit)) as ResultBroadcastTxCommit; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResultBroadcastTxCommit create() => ResultBroadcastTxCommit._();
  ResultBroadcastTxCommit createEmptyInstance() => create();
  static $pb.PbList<ResultBroadcastTxCommit> createRepeated() => $pb.PbList<ResultBroadcastTxCommit>();
  @$core.pragma('dart2js:noInline')
  static ResultBroadcastTxCommit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultBroadcastTxCommit>(create);
  static ResultBroadcastTxCommit? _defaultInstance;

  @$pb.TagNumber(1)
  $3.ResponseCheckTx get checkTx => $_getN(0);
  @$pb.TagNumber(1)
  set checkTx($3.ResponseCheckTx v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCheckTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearCheckTx() => clearField(1);
  @$pb.TagNumber(1)
  $3.ResponseCheckTx ensureCheckTx() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.ResponseDeliverTx get deliverTx => $_getN(1);
  @$pb.TagNumber(2)
  set deliverTx($3.ResponseDeliverTx v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeliverTx() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeliverTx() => clearField(2);
  @$pb.TagNumber(2)
  $3.ResponseDeliverTx ensureDeliverTx() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get hash => $_getN(2);
  @$pb.TagNumber(3)
  set hash($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearHash() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get height => $_getI64(3);
  @$pb.TagNumber(4)
  set height($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeight() => clearField(4);
}

class Issue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Issue', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSupply')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mintable')
    ..hasRequiredFields = false
  ;

  Issue._() : super();
  factory Issue({
    $core.List<$core.int>? from,
    $core.String? name,
    $core.String? symbol,
    $fixnum.Int64? totalSupply,
    $core.bool? mintable,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (name != null) {
      _result.name = name;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (totalSupply != null) {
      _result.totalSupply = totalSupply;
    }
    if (mintable != null) {
      _result.mintable = mintable;
    }
    return _result;
  }
  factory Issue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Issue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Issue clone() => Issue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Issue copyWith(void Function(Issue) updates) => super.copyWith((message) => updates(message as Issue)) as Issue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Issue create() => Issue._();
  Issue createEmptyInstance() => create();
  static $pb.PbList<Issue> createRepeated() => $pb.PbList<Issue>();
  @$core.pragma('dart2js:noInline')
  static Issue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Issue>(create);
  static Issue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get symbol => $_getSZ(2);
  @$pb.TagNumber(3)
  set symbol($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbol() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get totalSupply => $_getI64(3);
  @$pb.TagNumber(4)
  set totalSupply($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalSupply() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalSupply() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get mintable => $_getBF(4);
  @$pb.TagNumber(5)
  set mintable($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMintable() => $_has(4);
  @$pb.TagNumber(5)
  void clearMintable() => clearField(5);
}

class Burn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Burn', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..hasRequiredFields = false
  ;

  Burn._() : super();
  factory Burn({
    $core.List<$core.int>? from,
    $core.String? symbol,
    $fixnum.Int64? amount,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory Burn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Burn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Burn clone() => Burn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Burn copyWith(void Function(Burn) updates) => super.copyWith((message) => updates(message as Burn)) as Burn; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Burn create() => Burn._();
  Burn createEmptyInstance() => create();
  static $pb.PbList<Burn> createRepeated() => $pb.PbList<Burn>();
  @$core.pragma('dart2js:noInline')
  static Burn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Burn>(create);
  static Burn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);
}

class Mint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Mint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..hasRequiredFields = false
  ;

  Mint._() : super();
  factory Mint({
    $core.List<$core.int>? from,
    $core.String? symbol,
    $fixnum.Int64? amount,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory Mint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Mint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Mint clone() => Mint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Mint copyWith(void Function(Mint) updates) => super.copyWith((message) => updates(message as Mint)) as Mint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Mint create() => Mint._();
  Mint createEmptyInstance() => create();
  static $pb.PbList<Mint> createRepeated() => $pb.PbList<Mint>();
  @$core.pragma('dart2js:noInline')
  static Mint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mint>(create);
  static Mint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);
}

class SubmitProposal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubmitProposal', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'proposalType')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'proposer', $pb.PbFieldType.OY)
    ..pc<Token>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initialDeposit', $pb.PbFieldType.PM, subBuilder: Token.create)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'votingPeriod')
    ..hasRequiredFields = false
  ;

  SubmitProposal._() : super();
  factory SubmitProposal({
    $core.String? title,
    $core.String? description,
    $fixnum.Int64? proposalType,
    $core.List<$core.int>? proposer,
    $core.Iterable<Token>? initialDeposit,
    $fixnum.Int64? votingPeriod,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (proposalType != null) {
      _result.proposalType = proposalType;
    }
    if (proposer != null) {
      _result.proposer = proposer;
    }
    if (initialDeposit != null) {
      _result.initialDeposit.addAll(initialDeposit);
    }
    if (votingPeriod != null) {
      _result.votingPeriod = votingPeriod;
    }
    return _result;
  }
  factory SubmitProposal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitProposal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubmitProposal clone() => SubmitProposal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubmitProposal copyWith(void Function(SubmitProposal) updates) => super.copyWith((message) => updates(message as SubmitProposal)) as SubmitProposal; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitProposal create() => SubmitProposal._();
  SubmitProposal createEmptyInstance() => create();
  static $pb.PbList<SubmitProposal> createRepeated() => $pb.PbList<SubmitProposal>();
  @$core.pragma('dart2js:noInline')
  static SubmitProposal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubmitProposal>(create);
  static SubmitProposal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get proposalType => $_getI64(2);
  @$pb.TagNumber(3)
  set proposalType($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProposalType() => $_has(2);
  @$pb.TagNumber(3)
  void clearProposalType() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get proposer => $_getN(3);
  @$pb.TagNumber(4)
  set proposer($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProposer() => $_has(3);
  @$pb.TagNumber(4)
  void clearProposer() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<Token> get initialDeposit => $_getList(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get votingPeriod => $_getI64(5);
  @$pb.TagNumber(6)
  set votingPeriod($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasVotingPeriod() => $_has(5);
  @$pb.TagNumber(6)
  void clearVotingPeriod() => clearField(6);
}

class Deposit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Deposit', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'proposalId')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'depositer', $pb.PbFieldType.OY)
    ..pc<Token>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.PM, subBuilder: Token.create)
    ..hasRequiredFields = false
  ;

  Deposit._() : super();
  factory Deposit({
    $fixnum.Int64? proposalId,
    $core.List<$core.int>? depositer,
    $core.Iterable<Token>? amount,
  }) {
    final _result = create();
    if (proposalId != null) {
      _result.proposalId = proposalId;
    }
    if (depositer != null) {
      _result.depositer = depositer;
    }
    if (amount != null) {
      _result.amount.addAll(amount);
    }
    return _result;
  }
  factory Deposit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Deposit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Deposit clone() => Deposit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Deposit copyWith(void Function(Deposit) updates) => super.copyWith((message) => updates(message as Deposit)) as Deposit; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Deposit create() => Deposit._();
  Deposit createEmptyInstance() => create();
  static $pb.PbList<Deposit> createRepeated() => $pb.PbList<Deposit>();
  @$core.pragma('dart2js:noInline')
  static Deposit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Deposit>(create);
  static Deposit? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get proposalId => $_getI64(0);
  @$pb.TagNumber(1)
  set proposalId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProposalId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProposalId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get depositer => $_getN(1);
  @$pb.TagNumber(2)
  set depositer($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDepositer() => $_has(1);
  @$pb.TagNumber(2)
  void clearDepositer() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Token> get amount => $_getList(2);
}

class Description extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Description', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'moniker')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identity')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'website')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details')
    ..hasRequiredFields = false
  ;

  Description._() : super();
  factory Description({
    $core.String? moniker,
    $core.String? identity,
    $core.String? website,
    $core.String? details,
  }) {
    final _result = create();
    if (moniker != null) {
      _result.moniker = moniker;
    }
    if (identity != null) {
      _result.identity = identity;
    }
    if (website != null) {
      _result.website = website;
    }
    if (details != null) {
      _result.details = details;
    }
    return _result;
  }
  factory Description.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Description.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Description clone() => Description()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Description copyWith(void Function(Description) updates) => super.copyWith((message) => updates(message as Description)) as Description; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Description create() => Description._();
  Description createEmptyInstance() => create();
  static $pb.PbList<Description> createRepeated() => $pb.PbList<Description>();
  @$core.pragma('dart2js:noInline')
  static Description getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Description>(create);
  static Description? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get moniker => $_getSZ(0);
  @$pb.TagNumber(1)
  set moniker($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMoniker() => $_has(0);
  @$pb.TagNumber(1)
  void clearMoniker() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get identity => $_getSZ(1);
  @$pb.TagNumber(2)
  set identity($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdentity() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdentity() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get website => $_getSZ(2);
  @$pb.TagNumber(3)
  set website($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWebsite() => $_has(2);
  @$pb.TagNumber(3)
  void clearWebsite() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get details => $_getSZ(3);
  @$pb.TagNumber(4)
  set details($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDetails() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetails() => clearField(4);
}

class Commission extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Commission', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rate')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxRate')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxChangeRate')
    ..hasRequiredFields = false
  ;

  Commission._() : super();
  factory Commission({
    $fixnum.Int64? rate,
    $fixnum.Int64? maxRate,
    $fixnum.Int64? maxChangeRate,
  }) {
    final _result = create();
    if (rate != null) {
      _result.rate = rate;
    }
    if (maxRate != null) {
      _result.maxRate = maxRate;
    }
    if (maxChangeRate != null) {
      _result.maxChangeRate = maxChangeRate;
    }
    return _result;
  }
  factory Commission.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Commission.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Commission clone() => Commission()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Commission copyWith(void Function(Commission) updates) => super.copyWith((message) => updates(message as Commission)) as Commission; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Commission create() => Commission._();
  Commission createEmptyInstance() => create();
  static $pb.PbList<Commission> createRepeated() => $pb.PbList<Commission>();
  @$core.pragma('dart2js:noInline')
  static Commission getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Commission>(create);
  static Commission? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get rate => $_getI64(0);
  @$pb.TagNumber(1)
  set rate($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearRate() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get maxRate => $_getI64(1);
  @$pb.TagNumber(2)
  set maxRate($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxRate() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxRate() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get maxChangeRate => $_getI64(2);
  @$pb.TagNumber(3)
  set maxChangeRate($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxChangeRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxChangeRate() => clearField(3);
}

class CreateValidator extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateValidator', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOM<Description>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description', subBuilder: Description.create)
    ..aOM<Commission>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commission', subBuilder: Commission.create)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'delegatorAddress', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validatorAddress', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubkey', $pb.PbFieldType.OY)
    ..aOM<Token>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'delegation', subBuilder: Token.create)
    ..hasRequiredFields = false
  ;

  CreateValidator._() : super();
  factory CreateValidator({
    Description? description,
    Commission? commission,
    $core.List<$core.int>? delegatorAddress,
    $core.List<$core.int>? validatorAddress,
    $core.List<$core.int>? pubkey,
    Token? delegation,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    if (commission != null) {
      _result.commission = commission;
    }
    if (delegatorAddress != null) {
      _result.delegatorAddress = delegatorAddress;
    }
    if (validatorAddress != null) {
      _result.validatorAddress = validatorAddress;
    }
    if (pubkey != null) {
      _result.pubkey = pubkey;
    }
    if (delegation != null) {
      _result.delegation = delegation;
    }
    return _result;
  }
  factory CreateValidator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateValidator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateValidator clone() => CreateValidator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateValidator copyWith(void Function(CreateValidator) updates) => super.copyWith((message) => updates(message as CreateValidator)) as CreateValidator; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateValidator create() => CreateValidator._();
  CreateValidator createEmptyInstance() => create();
  static $pb.PbList<CreateValidator> createRepeated() => $pb.PbList<CreateValidator>();
  @$core.pragma('dart2js:noInline')
  static CreateValidator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateValidator>(create);
  static CreateValidator? _defaultInstance;

  @$pb.TagNumber(1)
  Description get description => $_getN(0);
  @$pb.TagNumber(1)
  set description(Description v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);
  @$pb.TagNumber(1)
  Description ensureDescription() => $_ensure(0);

  @$pb.TagNumber(2)
  Commission get commission => $_getN(1);
  @$pb.TagNumber(2)
  set commission(Commission v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommission() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommission() => clearField(2);
  @$pb.TagNumber(2)
  Commission ensureCommission() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get delegatorAddress => $_getN(2);
  @$pb.TagNumber(3)
  set delegatorAddress($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDelegatorAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearDelegatorAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get validatorAddress => $_getN(3);
  @$pb.TagNumber(4)
  set validatorAddress($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValidatorAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearValidatorAddress() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get pubkey => $_getN(4);
  @$pb.TagNumber(5)
  set pubkey($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPubkey() => $_has(4);
  @$pb.TagNumber(5)
  void clearPubkey() => clearField(5);

  @$pb.TagNumber(6)
  Token get delegation => $_getN(5);
  @$pb.TagNumber(6)
  set delegation(Token v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasDelegation() => $_has(5);
  @$pb.TagNumber(6)
  void clearDelegation() => clearField(6);
  @$pb.TagNumber(6)
  Token ensureDelegation() => $_ensure(5);
}

class RealCreateValidator extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RealCreateValidator', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOM<CreateValidator>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createValidator', protoName: 'createValidator', subBuilder: CreateValidator.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'proposalId')
    ..hasRequiredFields = false
  ;

  RealCreateValidator._() : super();
  factory RealCreateValidator({
    CreateValidator? createValidator,
    $fixnum.Int64? proposalId,
  }) {
    final _result = create();
    if (createValidator != null) {
      _result.createValidator = createValidator;
    }
    if (proposalId != null) {
      _result.proposalId = proposalId;
    }
    return _result;
  }
  factory RealCreateValidator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RealCreateValidator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RealCreateValidator clone() => RealCreateValidator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RealCreateValidator copyWith(void Function(RealCreateValidator) updates) => super.copyWith((message) => updates(message as RealCreateValidator)) as RealCreateValidator; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RealCreateValidator create() => RealCreateValidator._();
  RealCreateValidator createEmptyInstance() => create();
  static $pb.PbList<RealCreateValidator> createRepeated() => $pb.PbList<RealCreateValidator>();
  @$core.pragma('dart2js:noInline')
  static RealCreateValidator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RealCreateValidator>(create);
  static RealCreateValidator? _defaultInstance;

  @$pb.TagNumber(1)
  CreateValidator get createValidator => $_getN(0);
  @$pb.TagNumber(1)
  set createValidator(CreateValidator v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreateValidator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreateValidator() => clearField(1);
  @$pb.TagNumber(1)
  CreateValidator ensureCreateValidator() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get proposalId => $_getI64(1);
  @$pb.TagNumber(2)
  set proposalId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProposalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProposalId() => clearField(2);
}

class RemoveValidator extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveValidator', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'launcherAddr', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valAddr', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valConsAddr', $pb.PbFieldType.OY)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'proposalId')
    ..hasRequiredFields = false
  ;

  RemoveValidator._() : super();
  factory RemoveValidator({
    $core.List<$core.int>? launcherAddr,
    $core.List<$core.int>? valAddr,
    $core.List<$core.int>? valConsAddr,
    $fixnum.Int64? proposalId,
  }) {
    final _result = create();
    if (launcherAddr != null) {
      _result.launcherAddr = launcherAddr;
    }
    if (valAddr != null) {
      _result.valAddr = valAddr;
    }
    if (valConsAddr != null) {
      _result.valConsAddr = valConsAddr;
    }
    if (proposalId != null) {
      _result.proposalId = proposalId;
    }
    return _result;
  }
  factory RemoveValidator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveValidator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveValidator clone() => RemoveValidator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveValidator copyWith(void Function(RemoveValidator) updates) => super.copyWith((message) => updates(message as RemoveValidator)) as RemoveValidator; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveValidator create() => RemoveValidator._();
  RemoveValidator createEmptyInstance() => create();
  static $pb.PbList<RemoveValidator> createRepeated() => $pb.PbList<RemoveValidator>();
  @$core.pragma('dart2js:noInline')
  static RemoveValidator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveValidator>(create);
  static RemoveValidator? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get launcherAddr => $_getN(0);
  @$pb.TagNumber(1)
  set launcherAddr($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLauncherAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearLauncherAddr() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get valAddr => $_getN(1);
  @$pb.TagNumber(2)
  set valAddr($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearValAddr() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get valConsAddr => $_getN(2);
  @$pb.TagNumber(3)
  set valConsAddr($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValConsAddr() => $_has(2);
  @$pb.TagNumber(3)
  void clearValConsAddr() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get proposalId => $_getI64(3);
  @$pb.TagNumber(4)
  set proposalId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProposalId() => $_has(3);
  @$pb.TagNumber(4)
  void clearProposalId() => clearField(4);
}

class List_ extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'List', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'proposalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseAssetSymbol')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quoteAssetSymbol')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initPrice')
    ..hasRequiredFields = false
  ;

  List_._() : super();
  factory List_({
    $core.List<$core.int>? from,
    $fixnum.Int64? proposalId,
    $core.String? baseAssetSymbol,
    $core.String? quoteAssetSymbol,
    $fixnum.Int64? initPrice,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (proposalId != null) {
      _result.proposalId = proposalId;
    }
    if (baseAssetSymbol != null) {
      _result.baseAssetSymbol = baseAssetSymbol;
    }
    if (quoteAssetSymbol != null) {
      _result.quoteAssetSymbol = quoteAssetSymbol;
    }
    if (initPrice != null) {
      _result.initPrice = initPrice;
    }
    return _result;
  }
  factory List_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory List_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  List_ clone() => List_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  List_ copyWith(void Function(List_) updates) => super.copyWith((message) => updates(message as List_)) as List_; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static List_ create() => List_._();
  List_ createEmptyInstance() => create();
  static $pb.PbList<List_> createRepeated() => $pb.PbList<List_>();
  @$core.pragma('dart2js:noInline')
  static List_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<List_>(create);
  static List_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get proposalId => $_getI64(1);
  @$pb.TagNumber(2)
  set proposalId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProposalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProposalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get baseAssetSymbol => $_getSZ(2);
  @$pb.TagNumber(3)
  set baseAssetSymbol($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBaseAssetSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearBaseAssetSymbol() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get quoteAssetSymbol => $_getSZ(3);
  @$pb.TagNumber(4)
  set quoteAssetSymbol($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQuoteAssetSymbol() => $_has(3);
  @$pb.TagNumber(4)
  void clearQuoteAssetSymbol() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get initPrice => $_getI64(4);
  @$pb.TagNumber(5)
  set initPrice($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasInitPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearInitPrice() => clearField(5);
}

class TimeLock_Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TimeLock.Token', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'denom')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..hasRequiredFields = false
  ;

  TimeLock_Token._() : super();
  factory TimeLock_Token({
    $core.String? denom,
    $fixnum.Int64? amount,
  }) {
    final _result = create();
    if (denom != null) {
      _result.denom = denom;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory TimeLock_Token.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeLock_Token.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeLock_Token clone() => TimeLock_Token()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeLock_Token copyWith(void Function(TimeLock_Token) updates) => super.copyWith((message) => updates(message as TimeLock_Token)) as TimeLock_Token; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimeLock_Token create() => TimeLock_Token._();
  TimeLock_Token createEmptyInstance() => create();
  static $pb.PbList<TimeLock_Token> createRepeated() => $pb.PbList<TimeLock_Token>();
  @$core.pragma('dart2js:noInline')
  static TimeLock_Token getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeLock_Token>(create);
  static TimeLock_Token? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get denom => $_getSZ(0);
  @$pb.TagNumber(1)
  set denom($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDenom() => $_has(0);
  @$pb.TagNumber(1)
  void clearDenom() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class TimeLock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TimeLock', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..pc<TimeLock_Token>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.PM, subBuilder: TimeLock_Token.create)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lockTime')
    ..hasRequiredFields = false
  ;

  TimeLock._() : super();
  factory TimeLock({
    $core.List<$core.int>? from,
    $core.String? description,
    $core.Iterable<TimeLock_Token>? amount,
    $fixnum.Int64? lockTime,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (description != null) {
      _result.description = description;
    }
    if (amount != null) {
      _result.amount.addAll(amount);
    }
    if (lockTime != null) {
      _result.lockTime = lockTime;
    }
    return _result;
  }
  factory TimeLock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeLock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeLock clone() => TimeLock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeLock copyWith(void Function(TimeLock) updates) => super.copyWith((message) => updates(message as TimeLock)) as TimeLock; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimeLock create() => TimeLock._();
  TimeLock createEmptyInstance() => create();
  static $pb.PbList<TimeLock> createRepeated() => $pb.PbList<TimeLock>();
  @$core.pragma('dart2js:noInline')
  static TimeLock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeLock>(create);
  static TimeLock? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<TimeLock_Token> get amount => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lockTime => $_getI64(3);
  @$pb.TagNumber(4)
  set lockTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLockTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLockTime() => clearField(4);
}

class TimeUnlock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TimeUnlock', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeLockId')
    ..hasRequiredFields = false
  ;

  TimeUnlock._() : super();
  factory TimeUnlock({
    $core.List<$core.int>? from,
    $fixnum.Int64? timeLockId,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (timeLockId != null) {
      _result.timeLockId = timeLockId;
    }
    return _result;
  }
  factory TimeUnlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeUnlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeUnlock clone() => TimeUnlock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeUnlock copyWith(void Function(TimeUnlock) updates) => super.copyWith((message) => updates(message as TimeUnlock)) as TimeUnlock; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimeUnlock create() => TimeUnlock._();
  TimeUnlock createEmptyInstance() => create();
  static $pb.PbList<TimeUnlock> createRepeated() => $pb.PbList<TimeUnlock>();
  @$core.pragma('dart2js:noInline')
  static TimeUnlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeUnlock>(create);
  static TimeUnlock? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timeLockId => $_getI64(1);
  @$pb.TagNumber(2)
  set timeLockId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimeLockId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimeLockId() => clearField(2);
}

class TimeRelock_Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TimeRelock.Token', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'denom')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..hasRequiredFields = false
  ;

  TimeRelock_Token._() : super();
  factory TimeRelock_Token({
    $core.String? denom,
    $fixnum.Int64? amount,
  }) {
    final _result = create();
    if (denom != null) {
      _result.denom = denom;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory TimeRelock_Token.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeRelock_Token.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeRelock_Token clone() => TimeRelock_Token()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeRelock_Token copyWith(void Function(TimeRelock_Token) updates) => super.copyWith((message) => updates(message as TimeRelock_Token)) as TimeRelock_Token; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimeRelock_Token create() => TimeRelock_Token._();
  TimeRelock_Token createEmptyInstance() => create();
  static $pb.PbList<TimeRelock_Token> createRepeated() => $pb.PbList<TimeRelock_Token>();
  @$core.pragma('dart2js:noInline')
  static TimeRelock_Token getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeRelock_Token>(create);
  static TimeRelock_Token? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get denom => $_getSZ(0);
  @$pb.TagNumber(1)
  set denom($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDenom() => $_has(0);
  @$pb.TagNumber(1)
  void clearDenom() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class TimeRelock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TimeRelock', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeLockId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..pc<TimeRelock_Token>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.PM, subBuilder: TimeRelock_Token.create)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lockTime')
    ..hasRequiredFields = false
  ;

  TimeRelock._() : super();
  factory TimeRelock({
    $core.List<$core.int>? from,
    $fixnum.Int64? timeLockId,
    $core.String? description,
    $core.Iterable<TimeRelock_Token>? amount,
    $fixnum.Int64? lockTime,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (timeLockId != null) {
      _result.timeLockId = timeLockId;
    }
    if (description != null) {
      _result.description = description;
    }
    if (amount != null) {
      _result.amount.addAll(amount);
    }
    if (lockTime != null) {
      _result.lockTime = lockTime;
    }
    return _result;
  }
  factory TimeRelock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeRelock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeRelock clone() => TimeRelock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeRelock copyWith(void Function(TimeRelock) updates) => super.copyWith((message) => updates(message as TimeRelock)) as TimeRelock; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimeRelock create() => TimeRelock._();
  TimeRelock createEmptyInstance() => create();
  static $pb.PbList<TimeRelock> createRepeated() => $pb.PbList<TimeRelock>();
  @$core.pragma('dart2js:noInline')
  static TimeRelock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeRelock>(create);
  static TimeRelock? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timeLockId => $_getI64(1);
  @$pb.TagNumber(2)
  set timeLockId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimeLockId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimeLockId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<TimeRelock_Token> get amount => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get lockTime => $_getI64(4);
  @$pb.TagNumber(5)
  set lockTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLockTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearLockTime() => clearField(5);
}

class SetAccountFlag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetAccountFlag', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flags')
    ..hasRequiredFields = false
  ;

  SetAccountFlag._() : super();
  factory SetAccountFlag({
    $core.List<$core.int>? from,
    $fixnum.Int64? flags,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (flags != null) {
      _result.flags = flags;
    }
    return _result;
  }
  factory SetAccountFlag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetAccountFlag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetAccountFlag clone() => SetAccountFlag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetAccountFlag copyWith(void Function(SetAccountFlag) updates) => super.copyWith((message) => updates(message as SetAccountFlag)) as SetAccountFlag; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetAccountFlag create() => SetAccountFlag._();
  SetAccountFlag createEmptyInstance() => create();
  static $pb.PbList<SetAccountFlag> createRepeated() => $pb.PbList<SetAccountFlag>();
  @$core.pragma('dart2js:noInline')
  static SetAccountFlag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetAccountFlag>(create);
  static SetAccountFlag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get flags => $_getI64(1);
  @$pb.TagNumber(2)
  set flags($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFlags() => $_has(1);
  @$pb.TagNumber(2)
  void clearFlags() => clearField(2);
}

class HashTimerLockTransferMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HashTimerLockTransferMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', $pb.PbFieldType.OY)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipientOtherChain')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderOtherChain')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'randomNumberHash', $pb.PbFieldType.OY)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..pc<Token>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.PM, subBuilder: Token.create)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expectedIncome')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'heightSpan')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'crossChain')
    ..hasRequiredFields = false
  ;

  HashTimerLockTransferMsg._() : super();
  factory HashTimerLockTransferMsg({
    $core.List<$core.int>? from,
    $core.List<$core.int>? to,
    $core.String? recipientOtherChain,
    $core.String? senderOtherChain,
    $core.List<$core.int>? randomNumberHash,
    $fixnum.Int64? timestamp,
    $core.Iterable<Token>? amount,
    $core.String? expectedIncome,
    $fixnum.Int64? heightSpan,
    $core.bool? crossChain,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (to != null) {
      _result.to = to;
    }
    if (recipientOtherChain != null) {
      _result.recipientOtherChain = recipientOtherChain;
    }
    if (senderOtherChain != null) {
      _result.senderOtherChain = senderOtherChain;
    }
    if (randomNumberHash != null) {
      _result.randomNumberHash = randomNumberHash;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (amount != null) {
      _result.amount.addAll(amount);
    }
    if (expectedIncome != null) {
      _result.expectedIncome = expectedIncome;
    }
    if (heightSpan != null) {
      _result.heightSpan = heightSpan;
    }
    if (crossChain != null) {
      _result.crossChain = crossChain;
    }
    return _result;
  }
  factory HashTimerLockTransferMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HashTimerLockTransferMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HashTimerLockTransferMsg clone() => HashTimerLockTransferMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HashTimerLockTransferMsg copyWith(void Function(HashTimerLockTransferMsg) updates) => super.copyWith((message) => updates(message as HashTimerLockTransferMsg)) as HashTimerLockTransferMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HashTimerLockTransferMsg create() => HashTimerLockTransferMsg._();
  HashTimerLockTransferMsg createEmptyInstance() => create();
  static $pb.PbList<HashTimerLockTransferMsg> createRepeated() => $pb.PbList<HashTimerLockTransferMsg>();
  @$core.pragma('dart2js:noInline')
  static HashTimerLockTransferMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HashTimerLockTransferMsg>(create);
  static HashTimerLockTransferMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get to => $_getN(1);
  @$pb.TagNumber(2)
  set to($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTo() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get recipientOtherChain => $_getSZ(2);
  @$pb.TagNumber(3)
  set recipientOtherChain($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRecipientOtherChain() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecipientOtherChain() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get senderOtherChain => $_getSZ(3);
  @$pb.TagNumber(4)
  set senderOtherChain($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSenderOtherChain() => $_has(3);
  @$pb.TagNumber(4)
  void clearSenderOtherChain() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get randomNumberHash => $_getN(4);
  @$pb.TagNumber(5)
  set randomNumberHash($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRandomNumberHash() => $_has(4);
  @$pb.TagNumber(5)
  void clearRandomNumberHash() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get timestamp => $_getI64(5);
  @$pb.TagNumber(6)
  set timestamp($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTimestamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimestamp() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<Token> get amount => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get expectedIncome => $_getSZ(7);
  @$pb.TagNumber(8)
  set expectedIncome($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasExpectedIncome() => $_has(7);
  @$pb.TagNumber(8)
  void clearExpectedIncome() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get heightSpan => $_getI64(8);
  @$pb.TagNumber(9)
  set heightSpan($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasHeightSpan() => $_has(8);
  @$pb.TagNumber(9)
  void clearHeightSpan() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get crossChain => $_getBF(9);
  @$pb.TagNumber(10)
  set crossChain($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCrossChain() => $_has(9);
  @$pb.TagNumber(10)
  void clearCrossChain() => clearField(10);
}

class DepositHashTimerLockMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DepositHashTimerLockMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..pc<Token>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.PM, subBuilder: Token.create)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swapId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  DepositHashTimerLockMsg._() : super();
  factory DepositHashTimerLockMsg({
    $core.List<$core.int>? from,
    $core.Iterable<Token>? amount,
    $core.List<$core.int>? swapId,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (amount != null) {
      _result.amount.addAll(amount);
    }
    if (swapId != null) {
      _result.swapId = swapId;
    }
    return _result;
  }
  factory DepositHashTimerLockMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DepositHashTimerLockMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DepositHashTimerLockMsg clone() => DepositHashTimerLockMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DepositHashTimerLockMsg copyWith(void Function(DepositHashTimerLockMsg) updates) => super.copyWith((message) => updates(message as DepositHashTimerLockMsg)) as DepositHashTimerLockMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DepositHashTimerLockMsg create() => DepositHashTimerLockMsg._();
  DepositHashTimerLockMsg createEmptyInstance() => create();
  static $pb.PbList<DepositHashTimerLockMsg> createRepeated() => $pb.PbList<DepositHashTimerLockMsg>();
  @$core.pragma('dart2js:noInline')
  static DepositHashTimerLockMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DepositHashTimerLockMsg>(create);
  static DepositHashTimerLockMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Token> get amount => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get swapId => $_getN(2);
  @$pb.TagNumber(3)
  set swapId($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSwapId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSwapId() => clearField(3);
}

class ClaimHashTimerLockMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClaimHashTimerLockMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swapId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'randomNumber', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ClaimHashTimerLockMsg._() : super();
  factory ClaimHashTimerLockMsg({
    $core.List<$core.int>? from,
    $core.List<$core.int>? swapId,
    $core.List<$core.int>? randomNumber,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (swapId != null) {
      _result.swapId = swapId;
    }
    if (randomNumber != null) {
      _result.randomNumber = randomNumber;
    }
    return _result;
  }
  factory ClaimHashTimerLockMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClaimHashTimerLockMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClaimHashTimerLockMsg clone() => ClaimHashTimerLockMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClaimHashTimerLockMsg copyWith(void Function(ClaimHashTimerLockMsg) updates) => super.copyWith((message) => updates(message as ClaimHashTimerLockMsg)) as ClaimHashTimerLockMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClaimHashTimerLockMsg create() => ClaimHashTimerLockMsg._();
  ClaimHashTimerLockMsg createEmptyInstance() => create();
  static $pb.PbList<ClaimHashTimerLockMsg> createRepeated() => $pb.PbList<ClaimHashTimerLockMsg>();
  @$core.pragma('dart2js:noInline')
  static ClaimHashTimerLockMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClaimHashTimerLockMsg>(create);
  static ClaimHashTimerLockMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get swapId => $_getN(1);
  @$pb.TagNumber(2)
  set swapId($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSwapId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSwapId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get randomNumber => $_getN(2);
  @$pb.TagNumber(3)
  set randomNumber($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRandomNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearRandomNumber() => clearField(3);
}

class RefundHashTimerLockMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RefundHashTimerLockMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swapId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RefundHashTimerLockMsg._() : super();
  factory RefundHashTimerLockMsg({
    $core.List<$core.int>? from,
    $core.List<$core.int>? swapId,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (swapId != null) {
      _result.swapId = swapId;
    }
    return _result;
  }
  factory RefundHashTimerLockMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefundHashTimerLockMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefundHashTimerLockMsg clone() => RefundHashTimerLockMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefundHashTimerLockMsg copyWith(void Function(RefundHashTimerLockMsg) updates) => super.copyWith((message) => updates(message as RefundHashTimerLockMsg)) as RefundHashTimerLockMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefundHashTimerLockMsg create() => RefundHashTimerLockMsg._();
  RefundHashTimerLockMsg createEmptyInstance() => create();
  static $pb.PbList<RefundHashTimerLockMsg> createRepeated() => $pb.PbList<RefundHashTimerLockMsg>();
  @$core.pragma('dart2js:noInline')
  static RefundHashTimerLockMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefundHashTimerLockMsg>(create);
  static RefundHashTimerLockMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get swapId => $_getN(1);
  @$pb.TagNumber(2)
  set swapId($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSwapId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSwapId() => clearField(2);
}

class TinyTokenIssue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TinyTokenIssue', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSupply')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mintable')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenUri')
    ..hasRequiredFields = false
  ;

  TinyTokenIssue._() : super();
  factory TinyTokenIssue({
    $core.List<$core.int>? from,
    $core.String? name,
    $core.String? symbol,
    $fixnum.Int64? totalSupply,
    $core.bool? mintable,
    $core.String? tokenUri,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (name != null) {
      _result.name = name;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (totalSupply != null) {
      _result.totalSupply = totalSupply;
    }
    if (mintable != null) {
      _result.mintable = mintable;
    }
    if (tokenUri != null) {
      _result.tokenUri = tokenUri;
    }
    return _result;
  }
  factory TinyTokenIssue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TinyTokenIssue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TinyTokenIssue clone() => TinyTokenIssue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TinyTokenIssue copyWith(void Function(TinyTokenIssue) updates) => super.copyWith((message) => updates(message as TinyTokenIssue)) as TinyTokenIssue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TinyTokenIssue create() => TinyTokenIssue._();
  TinyTokenIssue createEmptyInstance() => create();
  static $pb.PbList<TinyTokenIssue> createRepeated() => $pb.PbList<TinyTokenIssue>();
  @$core.pragma('dart2js:noInline')
  static TinyTokenIssue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TinyTokenIssue>(create);
  static TinyTokenIssue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get symbol => $_getSZ(2);
  @$pb.TagNumber(3)
  set symbol($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbol() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get totalSupply => $_getI64(3);
  @$pb.TagNumber(4)
  set totalSupply($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalSupply() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalSupply() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get mintable => $_getBF(4);
  @$pb.TagNumber(5)
  set mintable($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMintable() => $_has(4);
  @$pb.TagNumber(5)
  void clearMintable() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get tokenUri => $_getSZ(5);
  @$pb.TagNumber(6)
  set tokenUri($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTokenUri() => $_has(5);
  @$pb.TagNumber(6)
  void clearTokenUri() => clearField(6);
}

class MiniTokenIssue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MiniTokenIssue', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSupply')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mintable')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenUri')
    ..hasRequiredFields = false
  ;

  MiniTokenIssue._() : super();
  factory MiniTokenIssue({
    $core.List<$core.int>? from,
    $core.String? name,
    $core.String? symbol,
    $fixnum.Int64? totalSupply,
    $core.bool? mintable,
    $core.String? tokenUri,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (name != null) {
      _result.name = name;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (totalSupply != null) {
      _result.totalSupply = totalSupply;
    }
    if (mintable != null) {
      _result.mintable = mintable;
    }
    if (tokenUri != null) {
      _result.tokenUri = tokenUri;
    }
    return _result;
  }
  factory MiniTokenIssue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MiniTokenIssue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MiniTokenIssue clone() => MiniTokenIssue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MiniTokenIssue copyWith(void Function(MiniTokenIssue) updates) => super.copyWith((message) => updates(message as MiniTokenIssue)) as MiniTokenIssue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MiniTokenIssue create() => MiniTokenIssue._();
  MiniTokenIssue createEmptyInstance() => create();
  static $pb.PbList<MiniTokenIssue> createRepeated() => $pb.PbList<MiniTokenIssue>();
  @$core.pragma('dart2js:noInline')
  static MiniTokenIssue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MiniTokenIssue>(create);
  static MiniTokenIssue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get symbol => $_getSZ(2);
  @$pb.TagNumber(3)
  set symbol($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbol() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get totalSupply => $_getI64(3);
  @$pb.TagNumber(4)
  set totalSupply($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalSupply() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalSupply() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get mintable => $_getBF(4);
  @$pb.TagNumber(5)
  set mintable($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMintable() => $_has(4);
  @$pb.TagNumber(5)
  void clearMintable() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get tokenUri => $_getSZ(5);
  @$pb.TagNumber(6)
  set tokenUri($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTokenUri() => $_has(5);
  @$pb.TagNumber(6)
  void clearTokenUri() => clearField(6);
}

class MiniTokenSetURI extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MiniTokenSetURI', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenUri')
    ..hasRequiredFields = false
  ;

  MiniTokenSetURI._() : super();
  factory MiniTokenSetURI({
    $core.List<$core.int>? from,
    $core.String? symbol,
    $core.String? tokenUri,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (tokenUri != null) {
      _result.tokenUri = tokenUri;
    }
    return _result;
  }
  factory MiniTokenSetURI.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MiniTokenSetURI.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MiniTokenSetURI clone() => MiniTokenSetURI()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MiniTokenSetURI copyWith(void Function(MiniTokenSetURI) updates) => super.copyWith((message) => updates(message as MiniTokenSetURI)) as MiniTokenSetURI; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MiniTokenSetURI create() => MiniTokenSetURI._();
  MiniTokenSetURI createEmptyInstance() => create();
  static $pb.PbList<MiniTokenSetURI> createRepeated() => $pb.PbList<MiniTokenSetURI>();
  @$core.pragma('dart2js:noInline')
  static MiniTokenSetURI getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MiniTokenSetURI>(create);
  static MiniTokenSetURI? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get tokenUri => $_getSZ(2);
  @$pb.TagNumber(3)
  set tokenUri($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTokenUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearTokenUri() => clearField(3);
}

class MiniTokenList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MiniTokenList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'transaction'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseAssetSymbol')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quoteAssetSymbol')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initPrice')
    ..hasRequiredFields = false
  ;

  MiniTokenList._() : super();
  factory MiniTokenList({
    $core.List<$core.int>? from,
    $core.String? baseAssetSymbol,
    $core.String? quoteAssetSymbol,
    $fixnum.Int64? initPrice,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (baseAssetSymbol != null) {
      _result.baseAssetSymbol = baseAssetSymbol;
    }
    if (quoteAssetSymbol != null) {
      _result.quoteAssetSymbol = quoteAssetSymbol;
    }
    if (initPrice != null) {
      _result.initPrice = initPrice;
    }
    return _result;
  }
  factory MiniTokenList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MiniTokenList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MiniTokenList clone() => MiniTokenList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MiniTokenList copyWith(void Function(MiniTokenList) updates) => super.copyWith((message) => updates(message as MiniTokenList)) as MiniTokenList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MiniTokenList create() => MiniTokenList._();
  MiniTokenList createEmptyInstance() => create();
  static $pb.PbList<MiniTokenList> createRepeated() => $pb.PbList<MiniTokenList>();
  @$core.pragma('dart2js:noInline')
  static MiniTokenList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MiniTokenList>(create);
  static MiniTokenList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get baseAssetSymbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set baseAssetSymbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBaseAssetSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearBaseAssetSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get quoteAssetSymbol => $_getSZ(2);
  @$pb.TagNumber(3)
  set quoteAssetSymbol($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuoteAssetSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuoteAssetSymbol() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get initPrice => $_getI64(3);
  @$pb.TagNumber(4)
  set initPrice($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInitPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearInitPrice() => clearField(4);
}

