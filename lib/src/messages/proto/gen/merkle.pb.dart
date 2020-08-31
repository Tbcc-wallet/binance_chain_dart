///
//  Generated code. Do not modify.
//  source: merkle.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ProofOp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProofOp', package: const $pb.PackageName('merkle'), createEmptyInstance: create)
    ..aOS(1, 'type')
    ..a<$core.List<$core.int>>(2, 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ProofOp._() : super();
  factory ProofOp() => create();
  factory ProofOp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProofOp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ProofOp clone() => ProofOp()..mergeFromMessage(this);
  ProofOp copyWith(void Function(ProofOp) updates) => super.copyWith((message) => updates(message as ProofOp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProofOp create() => ProofOp._();
  ProofOp createEmptyInstance() => create();
  static $pb.PbList<ProofOp> createRepeated() => $pb.PbList<ProofOp>();
  @$core.pragma('dart2js:noInline')
  static ProofOp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProofOp>(create);
  static ProofOp _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get key => $_getN(1);
  @$pb.TagNumber(2)
  set key($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
}

class Proof extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Proof', package: const $pb.PackageName('merkle'), createEmptyInstance: create)
    ..pc<ProofOp>(1, 'ops', $pb.PbFieldType.PM, subBuilder: ProofOp.create)
    ..hasRequiredFields = false
  ;

  Proof._() : super();
  factory Proof() => create();
  factory Proof.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Proof.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Proof clone() => Proof()..mergeFromMessage(this);
  Proof copyWith(void Function(Proof) updates) => super.copyWith((message) => updates(message as Proof));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Proof create() => Proof._();
  Proof createEmptyInstance() => create();
  static $pb.PbList<Proof> createRepeated() => $pb.PbList<Proof>();
  @$core.pragma('dart2js:noInline')
  static Proof getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Proof>(create);
  static Proof _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProofOp> get ops => $_getList(0);
}

