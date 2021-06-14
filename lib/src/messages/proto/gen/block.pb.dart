///
//  Generated code. Do not modify.
//  source: block.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class PartSetHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PartSetHeader', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto3'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Total', $pb.PbFieldType.O3, protoName: 'Total')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Hash', $pb.PbFieldType.OY, protoName: 'Hash')
    ..hasRequiredFields = false;

  PartSetHeader._() : super();
  factory PartSetHeader({
    $core.int? total,
    $core.List<$core.int>? hash,
  }) {
    final _result = create();
    if (total != null) {
      _result.total = total;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    return _result;
  }
  factory PartSetHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PartSetHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PartSetHeader clone() => PartSetHeader()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PartSetHeader copyWith(void Function(PartSetHeader) updates) => super.copyWith((message) => updates(message as PartSetHeader)) as PartSetHeader; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PartSetHeader create() => PartSetHeader._();
  PartSetHeader createEmptyInstance() => create();
  static $pb.PbList<PartSetHeader> createRepeated() => $pb.PbList<PartSetHeader>();
  @$core.pragma('dart2js:noInline')
  static PartSetHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PartSetHeader>(create);
  static PartSetHeader? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get total => $_getIZ(0);
  @$pb.TagNumber(1)
  set total($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTotal() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotal() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get hash => $_getN(1);
  @$pb.TagNumber(2)
  set hash($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);
}

class BlockID extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BlockID', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto3'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Hash', $pb.PbFieldType.OY, protoName: 'Hash')
    ..aOM<PartSetHeader>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PartsHeader', protoName: 'PartsHeader', subBuilder: PartSetHeader.create)
    ..hasRequiredFields = false;

  BlockID._() : super();
  factory BlockID({
    $core.List<$core.int>? hash,
    PartSetHeader? partsHeader,
  }) {
    final _result = create();
    if (hash != null) {
      _result.hash = hash;
    }
    if (partsHeader != null) {
      _result.partsHeader = partsHeader;
    }
    return _result;
  }
  factory BlockID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BlockID clone() => BlockID()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BlockID copyWith(void Function(BlockID) updates) => super.copyWith((message) => updates(message as BlockID)) as BlockID; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockID create() => BlockID._();
  BlockID createEmptyInstance() => create();
  static $pb.PbList<BlockID> createRepeated() => $pb.PbList<BlockID>();
  @$core.pragma('dart2js:noInline')
  static BlockID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockID>(create);
  static BlockID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(2)
  PartSetHeader get partsHeader => $_getN(1);
  @$pb.TagNumber(2)
  set partsHeader(PartSetHeader v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPartsHeader() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartsHeader() => clearField(2);
  @$pb.TagNumber(2)
  PartSetHeader ensurePartsHeader() => $_ensure(1);
}

class Header extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Header', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto3'), createEmptyInstance: create)
    ..aOM<Version>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Version', protoName: 'Version', subBuilder: Version.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ChainID', protoName: 'ChainID')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Height', protoName: 'Height')
    ..aOM<Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Time', protoName: 'Time', subBuilder: Timestamp.create)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NumTxs', protoName: 'NumTxs')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TotalTxs', protoName: 'TotalTxs')
    ..aOM<BlockID>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastBlockID', protoName: 'LastBlockID', subBuilder: BlockID.create)
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastCommitHash', $pb.PbFieldType.OY, protoName: 'LastCommitHash')
    ..a<$core.List<$core.int>>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'DataHash', $pb.PbFieldType.OY, protoName: 'DataHash')
    ..a<$core.List<$core.int>>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ValidatorsHash', $pb.PbFieldType.OY, protoName: 'ValidatorsHash')
    ..a<$core.List<$core.int>>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NextValidatorsHash', $pb.PbFieldType.OY, protoName: 'NextValidatorsHash')
    ..a<$core.List<$core.int>>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ConsensusHash', $pb.PbFieldType.OY, protoName: 'ConsensusHash')
    ..a<$core.List<$core.int>>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AppHash', $pb.PbFieldType.OY, protoName: 'AppHash')
    ..a<$core.List<$core.int>>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastResultsHash', $pb.PbFieldType.OY, protoName: 'LastResultsHash')
    ..a<$core.List<$core.int>>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'EvidenceHash', $pb.PbFieldType.OY, protoName: 'EvidenceHash')
    ..a<$core.List<$core.int>>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ProposerAddress', $pb.PbFieldType.OY, protoName: 'ProposerAddress')
    ..hasRequiredFields = false;

  Header._() : super();
  factory Header({
    Version? version,
    $core.String? chainID,
    $fixnum.Int64? height,
    Timestamp? time,
    $fixnum.Int64? numTxs,
    $fixnum.Int64? totalTxs,
    BlockID? lastBlockID,
    $core.List<$core.int>? lastCommitHash,
    $core.List<$core.int>? dataHash,
    $core.List<$core.int>? validatorsHash,
    $core.List<$core.int>? nextValidatorsHash,
    $core.List<$core.int>? consensusHash,
    $core.List<$core.int>? appHash,
    $core.List<$core.int>? lastResultsHash,
    $core.List<$core.int>? evidenceHash,
    $core.List<$core.int>? proposerAddress,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (chainID != null) {
      _result.chainID = chainID;
    }
    if (height != null) {
      _result.height = height;
    }
    if (time != null) {
      _result.time = time;
    }
    if (numTxs != null) {
      _result.numTxs = numTxs;
    }
    if (totalTxs != null) {
      _result.totalTxs = totalTxs;
    }
    if (lastBlockID != null) {
      _result.lastBlockID = lastBlockID;
    }
    if (lastCommitHash != null) {
      _result.lastCommitHash = lastCommitHash;
    }
    if (dataHash != null) {
      _result.dataHash = dataHash;
    }
    if (validatorsHash != null) {
      _result.validatorsHash = validatorsHash;
    }
    if (nextValidatorsHash != null) {
      _result.nextValidatorsHash = nextValidatorsHash;
    }
    if (consensusHash != null) {
      _result.consensusHash = consensusHash;
    }
    if (appHash != null) {
      _result.appHash = appHash;
    }
    if (lastResultsHash != null) {
      _result.lastResultsHash = lastResultsHash;
    }
    if (evidenceHash != null) {
      _result.evidenceHash = evidenceHash;
    }
    if (proposerAddress != null) {
      _result.proposerAddress = proposerAddress;
    }
    return _result;
  }
  factory Header.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Header.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Header clone() => Header()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Header copyWith(void Function(Header) updates) => super.copyWith((message) => updates(message as Header)) as Header; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Header create() => Header._();
  Header createEmptyInstance() => create();
  static $pb.PbList<Header> createRepeated() => $pb.PbList<Header>();
  @$core.pragma('dart2js:noInline')
  static Header getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Header>(create);
  static Header? _defaultInstance;

  @$pb.TagNumber(1)
  Version get version => $_getN(0);
  @$pb.TagNumber(1)
  set version(Version v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);
  @$pb.TagNumber(1)
  Version ensureVersion() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get chainID => $_getSZ(1);
  @$pb.TagNumber(2)
  set chainID($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasChainID() => $_has(1);
  @$pb.TagNumber(2)
  void clearChainID() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get height => $_getI64(2);
  @$pb.TagNumber(3)
  set height($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);

  @$pb.TagNumber(4)
  Timestamp get time => $_getN(3);
  @$pb.TagNumber(4)
  set time(Timestamp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);
  @$pb.TagNumber(4)
  Timestamp ensureTime() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get numTxs => $_getI64(4);
  @$pb.TagNumber(5)
  set numTxs($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNumTxs() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumTxs() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get totalTxs => $_getI64(5);
  @$pb.TagNumber(6)
  set totalTxs($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTotalTxs() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalTxs() => clearField(6);

  @$pb.TagNumber(7)
  BlockID get lastBlockID => $_getN(6);
  @$pb.TagNumber(7)
  set lastBlockID(BlockID v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasLastBlockID() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastBlockID() => clearField(7);
  @$pb.TagNumber(7)
  BlockID ensureLastBlockID() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.List<$core.int> get lastCommitHash => $_getN(7);
  @$pb.TagNumber(8)
  set lastCommitHash($core.List<$core.int> v) {
    $_setBytes(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasLastCommitHash() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastCommitHash() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get dataHash => $_getN(8);
  @$pb.TagNumber(9)
  set dataHash($core.List<$core.int> v) {
    $_setBytes(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasDataHash() => $_has(8);
  @$pb.TagNumber(9)
  void clearDataHash() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get validatorsHash => $_getN(9);
  @$pb.TagNumber(10)
  set validatorsHash($core.List<$core.int> v) {
    $_setBytes(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasValidatorsHash() => $_has(9);
  @$pb.TagNumber(10)
  void clearValidatorsHash() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get nextValidatorsHash => $_getN(10);
  @$pb.TagNumber(11)
  set nextValidatorsHash($core.List<$core.int> v) {
    $_setBytes(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasNextValidatorsHash() => $_has(10);
  @$pb.TagNumber(11)
  void clearNextValidatorsHash() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.int> get consensusHash => $_getN(11);
  @$pb.TagNumber(12)
  set consensusHash($core.List<$core.int> v) {
    $_setBytes(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasConsensusHash() => $_has(11);
  @$pb.TagNumber(12)
  void clearConsensusHash() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get appHash => $_getN(12);
  @$pb.TagNumber(13)
  set appHash($core.List<$core.int> v) {
    $_setBytes(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasAppHash() => $_has(12);
  @$pb.TagNumber(13)
  void clearAppHash() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.int> get lastResultsHash => $_getN(13);
  @$pb.TagNumber(14)
  set lastResultsHash($core.List<$core.int> v) {
    $_setBytes(13, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasLastResultsHash() => $_has(13);
  @$pb.TagNumber(14)
  void clearLastResultsHash() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.int> get evidenceHash => $_getN(14);
  @$pb.TagNumber(15)
  set evidenceHash($core.List<$core.int> v) {
    $_setBytes(14, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasEvidenceHash() => $_has(14);
  @$pb.TagNumber(15)
  void clearEvidenceHash() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<$core.int> get proposerAddress => $_getN(15);
  @$pb.TagNumber(16)
  set proposerAddress($core.List<$core.int> v) {
    $_setBytes(15, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasProposerAddress() => $_has(15);
  @$pb.TagNumber(16)
  void clearProposerAddress() => clearField(16);
}

class Version extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Version', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto3'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Block', $pb.PbFieldType.OU6, protoName: 'Block', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'App', $pb.PbFieldType.OU6, protoName: 'App', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  Version._() : super();
  factory Version({
    $fixnum.Int64? block,
    $fixnum.Int64? app,
  }) {
    final _result = create();
    if (block != null) {
      _result.block = block;
    }
    if (app != null) {
      _result.app = app;
    }
    return _result;
  }
  factory Version.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Version.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Version clone() => Version()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Version copyWith(void Function(Version) updates) => super.copyWith((message) => updates(message as Version)) as Version; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Version create() => Version._();
  Version createEmptyInstance() => create();
  static $pb.PbList<Version> createRepeated() => $pb.PbList<Version>();
  @$core.pragma('dart2js:noInline')
  static Version getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Version>(create);
  static Version? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get block => $_getI64(0);
  @$pb.TagNumber(1)
  set block($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlock() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get app => $_getI64(1);
  @$pb.TagNumber(2)
  set app($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasApp() => $_has(1);
  @$pb.TagNumber(2)
  void clearApp() => clearField(2);
}

class Timestamp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Timestamp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto3'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seconds')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nanos', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  Timestamp._() : super();
  factory Timestamp({
    $fixnum.Int64? seconds,
    $core.int? nanos,
  }) {
    final _result = create();
    if (seconds != null) {
      _result.seconds = seconds;
    }
    if (nanos != null) {
      _result.nanos = nanos;
    }
    return _result;
  }
  factory Timestamp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Timestamp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Timestamp clone() => Timestamp()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Timestamp copyWith(void Function(Timestamp) updates) => super.copyWith((message) => updates(message as Timestamp)) as Timestamp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Timestamp create() => Timestamp._();
  Timestamp createEmptyInstance() => create();
  static $pb.PbList<Timestamp> createRepeated() => $pb.PbList<Timestamp>();
  @$core.pragma('dart2js:noInline')
  static Timestamp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Timestamp>(create);
  static Timestamp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get seconds => $_getI64(0);
  @$pb.TagNumber(1)
  set seconds($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeconds() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get nanos => $_getIZ(1);
  @$pb.TagNumber(2)
  set nanos($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNanos() => $_has(1);
  @$pb.TagNumber(2)
  void clearNanos() => clearField(2);
}
