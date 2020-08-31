///
//  Generated code. Do not modify.
//  source: tendermint_types.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class KVPair extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KVPair', package: const $pb.PackageName('common'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  KVPair._() : super();
  factory KVPair() => create();
  factory KVPair.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KVPair.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  KVPair clone() => KVPair()..mergeFromMessage(this);
  KVPair copyWith(void Function(KVPair) updates) => super.copyWith((message) => updates(message as KVPair));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KVPair create() => KVPair._();
  KVPair createEmptyInstance() => create();
  static $pb.PbList<KVPair> createRepeated() => $pb.PbList<KVPair>();
  @$core.pragma('dart2js:noInline')
  static KVPair getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KVPair>(create);
  static KVPair _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class KI64Pair extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KI64Pair', package: const $pb.PackageName('common'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'key', $pb.PbFieldType.OY)
    ..aInt64(2, 'value')
    ..hasRequiredFields = false
  ;

  KI64Pair._() : super();
  factory KI64Pair() => create();
  factory KI64Pair.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KI64Pair.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  KI64Pair clone() => KI64Pair()..mergeFromMessage(this);
  KI64Pair copyWith(void Function(KI64Pair) updates) => super.copyWith((message) => updates(message as KI64Pair));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KI64Pair create() => KI64Pair._();
  KI64Pair createEmptyInstance() => create();
  static $pb.PbList<KI64Pair> createRepeated() => $pb.PbList<KI64Pair>();
  @$core.pragma('dart2js:noInline')
  static KI64Pair getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KI64Pair>(create);
  static KI64Pair _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get value => $_getI64(1);
  @$pb.TagNumber(2)
  set value($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

