///
//  Generated code. Do not modify.
//  source: bridge.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class TransferOutMsg_Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransferOutMsg.Token', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bridge'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'denom')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..hasRequiredFields = false
  ;

  TransferOutMsg_Token._() : super();
  factory TransferOutMsg_Token({
    $core.String denom,
    $fixnum.Int64 amount,
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
  factory TransferOutMsg_Token.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransferOutMsg_Token.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransferOutMsg_Token clone() => TransferOutMsg_Token()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransferOutMsg_Token copyWith(void Function(TransferOutMsg_Token) updates) => super.copyWith((message) => updates(message as TransferOutMsg_Token)) as TransferOutMsg_Token; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransferOutMsg_Token create() => TransferOutMsg_Token._();
  TransferOutMsg_Token createEmptyInstance() => create();
  static $pb.PbList<TransferOutMsg_Token> createRepeated() => $pb.PbList<TransferOutMsg_Token>();
  @$core.pragma('dart2js:noInline')
  static TransferOutMsg_Token getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransferOutMsg_Token>(create);
  static TransferOutMsg_Token _defaultInstance;

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

class TransferOutMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransferOutMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'bridge'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', $pb.PbFieldType.OY)
    ..aOM<TransferOutMsg_Token>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', subBuilder: TransferOutMsg_Token.create)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expireTime')
    ..hasRequiredFields = false
  ;

  TransferOutMsg._() : super();
  factory TransferOutMsg({
    $core.List<$core.int> from,
    $core.List<$core.int> to,
    TransferOutMsg_Token amount,
    $fixnum.Int64 expireTime,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (to != null) {
      _result.to = to;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (expireTime != null) {
      _result.expireTime = expireTime;
    }
    return _result;
  }
  factory TransferOutMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransferOutMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransferOutMsg clone() => TransferOutMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransferOutMsg copyWith(void Function(TransferOutMsg) updates) => super.copyWith((message) => updates(message as TransferOutMsg)) as TransferOutMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransferOutMsg create() => TransferOutMsg._();
  TransferOutMsg createEmptyInstance() => create();
  static $pb.PbList<TransferOutMsg> createRepeated() => $pb.PbList<TransferOutMsg>();
  @$core.pragma('dart2js:noInline')
  static TransferOutMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransferOutMsg>(create);
  static TransferOutMsg _defaultInstance;

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
  TransferOutMsg_Token get amount => $_getN(2);
  @$pb.TagNumber(3)
  set amount(TransferOutMsg_Token v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);
  @$pb.TagNumber(3)
  TransferOutMsg_Token ensureAmount() => $_ensure(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get expireTime => $_getI64(3);
  @$pb.TagNumber(4)
  set expireTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpireTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpireTime() => clearField(4);
}

