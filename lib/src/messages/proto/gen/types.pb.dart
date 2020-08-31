///
//  Generated code. Do not modify.
//  source: types.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google_timestamp.pb.dart' as $0;
import 'merkle.pb.dart' as $1;
import 'tendermint_types.pb.dart' as $2;

enum Request_Value {
  echo, 
  flush, 
  info, 
  setOption, 
  initChain, 
  query, 
  beginBlock, 
  checkTx, 
  endBlock, 
  commit, 
  deliverTx, 
  notSet
}

class Request extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Request_Value> _Request_ValueByTag = {
    2 : Request_Value.echo,
    3 : Request_Value.flush,
    4 : Request_Value.info,
    5 : Request_Value.setOption,
    6 : Request_Value.initChain,
    7 : Request_Value.query,
    8 : Request_Value.beginBlock,
    9 : Request_Value.checkTx,
    11 : Request_Value.endBlock,
    12 : Request_Value.commit,
    19 : Request_Value.deliverTx,
    0 : Request_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Request', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 19])
    ..aOM<RequestEcho>(2, 'echo', subBuilder: RequestEcho.create)
    ..aOM<RequestFlush>(3, 'flush', subBuilder: RequestFlush.create)
    ..aOM<RequestInfo>(4, 'info', subBuilder: RequestInfo.create)
    ..aOM<RequestSetOption>(5, 'setOption', subBuilder: RequestSetOption.create)
    ..aOM<RequestInitChain>(6, 'initChain', subBuilder: RequestInitChain.create)
    ..aOM<RequestQuery>(7, 'query', subBuilder: RequestQuery.create)
    ..aOM<RequestBeginBlock>(8, 'beginBlock', subBuilder: RequestBeginBlock.create)
    ..aOM<RequestCheckTx>(9, 'checkTx', subBuilder: RequestCheckTx.create)
    ..aOM<RequestEndBlock>(11, 'endBlock', subBuilder: RequestEndBlock.create)
    ..aOM<RequestCommit>(12, 'commit', subBuilder: RequestCommit.create)
    ..aOM<RequestDeliverTx>(19, 'deliverTx', subBuilder: RequestDeliverTx.create)
    ..hasRequiredFields = false
  ;

  Request._() : super();
  factory Request() => create();
  factory Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Request clone() => Request()..mergeFromMessage(this);
  Request copyWith(void Function(Request) updates) => super.copyWith((message) => updates(message as Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Request create() => Request._();
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  @$core.pragma('dart2js:noInline')
  static Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Request>(create);
  static Request _defaultInstance;

  Request_Value whichValue() => _Request_ValueByTag[$_whichOneof(0)];
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  RequestEcho get echo => $_getN(0);
  @$pb.TagNumber(2)
  set echo(RequestEcho v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEcho() => $_has(0);
  @$pb.TagNumber(2)
  void clearEcho() => clearField(2);
  @$pb.TagNumber(2)
  RequestEcho ensureEcho() => $_ensure(0);

  @$pb.TagNumber(3)
  RequestFlush get flush => $_getN(1);
  @$pb.TagNumber(3)
  set flush(RequestFlush v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFlush() => $_has(1);
  @$pb.TagNumber(3)
  void clearFlush() => clearField(3);
  @$pb.TagNumber(3)
  RequestFlush ensureFlush() => $_ensure(1);

  @$pb.TagNumber(4)
  RequestInfo get info => $_getN(2);
  @$pb.TagNumber(4)
  set info(RequestInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(2);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);
  @$pb.TagNumber(4)
  RequestInfo ensureInfo() => $_ensure(2);

  @$pb.TagNumber(5)
  RequestSetOption get setOption => $_getN(3);
  @$pb.TagNumber(5)
  set setOption(RequestSetOption v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSetOption() => $_has(3);
  @$pb.TagNumber(5)
  void clearSetOption() => clearField(5);
  @$pb.TagNumber(5)
  RequestSetOption ensureSetOption() => $_ensure(3);

  @$pb.TagNumber(6)
  RequestInitChain get initChain => $_getN(4);
  @$pb.TagNumber(6)
  set initChain(RequestInitChain v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasInitChain() => $_has(4);
  @$pb.TagNumber(6)
  void clearInitChain() => clearField(6);
  @$pb.TagNumber(6)
  RequestInitChain ensureInitChain() => $_ensure(4);

  @$pb.TagNumber(7)
  RequestQuery get query => $_getN(5);
  @$pb.TagNumber(7)
  set query(RequestQuery v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasQuery() => $_has(5);
  @$pb.TagNumber(7)
  void clearQuery() => clearField(7);
  @$pb.TagNumber(7)
  RequestQuery ensureQuery() => $_ensure(5);

  @$pb.TagNumber(8)
  RequestBeginBlock get beginBlock => $_getN(6);
  @$pb.TagNumber(8)
  set beginBlock(RequestBeginBlock v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBeginBlock() => $_has(6);
  @$pb.TagNumber(8)
  void clearBeginBlock() => clearField(8);
  @$pb.TagNumber(8)
  RequestBeginBlock ensureBeginBlock() => $_ensure(6);

  @$pb.TagNumber(9)
  RequestCheckTx get checkTx => $_getN(7);
  @$pb.TagNumber(9)
  set checkTx(RequestCheckTx v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasCheckTx() => $_has(7);
  @$pb.TagNumber(9)
  void clearCheckTx() => clearField(9);
  @$pb.TagNumber(9)
  RequestCheckTx ensureCheckTx() => $_ensure(7);

  @$pb.TagNumber(11)
  RequestEndBlock get endBlock => $_getN(8);
  @$pb.TagNumber(11)
  set endBlock(RequestEndBlock v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasEndBlock() => $_has(8);
  @$pb.TagNumber(11)
  void clearEndBlock() => clearField(11);
  @$pb.TagNumber(11)
  RequestEndBlock ensureEndBlock() => $_ensure(8);

  @$pb.TagNumber(12)
  RequestCommit get commit => $_getN(9);
  @$pb.TagNumber(12)
  set commit(RequestCommit v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasCommit() => $_has(9);
  @$pb.TagNumber(12)
  void clearCommit() => clearField(12);
  @$pb.TagNumber(12)
  RequestCommit ensureCommit() => $_ensure(9);

  @$pb.TagNumber(19)
  RequestDeliverTx get deliverTx => $_getN(10);
  @$pb.TagNumber(19)
  set deliverTx(RequestDeliverTx v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasDeliverTx() => $_has(10);
  @$pb.TagNumber(19)
  void clearDeliverTx() => clearField(19);
  @$pb.TagNumber(19)
  RequestDeliverTx ensureDeliverTx() => $_ensure(10);
}

class RequestEcho extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestEcho', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOS(1, 'message')
    ..hasRequiredFields = false
  ;

  RequestEcho._() : super();
  factory RequestEcho() => create();
  factory RequestEcho.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestEcho.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestEcho clone() => RequestEcho()..mergeFromMessage(this);
  RequestEcho copyWith(void Function(RequestEcho) updates) => super.copyWith((message) => updates(message as RequestEcho));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestEcho create() => RequestEcho._();
  RequestEcho createEmptyInstance() => create();
  static $pb.PbList<RequestEcho> createRepeated() => $pb.PbList<RequestEcho>();
  @$core.pragma('dart2js:noInline')
  static RequestEcho getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestEcho>(create);
  static RequestEcho _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class RequestFlush extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestFlush', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RequestFlush._() : super();
  factory RequestFlush() => create();
  factory RequestFlush.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestFlush.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestFlush clone() => RequestFlush()..mergeFromMessage(this);
  RequestFlush copyWith(void Function(RequestFlush) updates) => super.copyWith((message) => updates(message as RequestFlush));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestFlush create() => RequestFlush._();
  RequestFlush createEmptyInstance() => create();
  static $pb.PbList<RequestFlush> createRepeated() => $pb.PbList<RequestFlush>();
  @$core.pragma('dart2js:noInline')
  static RequestFlush getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestFlush>(create);
  static RequestFlush _defaultInstance;
}

class RequestInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestInfo', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOS(1, 'version')
    ..a<$fixnum.Int64>(2, 'blockVersion', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, 'p2pVersion', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  RequestInfo._() : super();
  factory RequestInfo() => create();
  factory RequestInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestInfo clone() => RequestInfo()..mergeFromMessage(this);
  RequestInfo copyWith(void Function(RequestInfo) updates) => super.copyWith((message) => updates(message as RequestInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestInfo create() => RequestInfo._();
  RequestInfo createEmptyInstance() => create();
  static $pb.PbList<RequestInfo> createRepeated() => $pb.PbList<RequestInfo>();
  @$core.pragma('dart2js:noInline')
  static RequestInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestInfo>(create);
  static RequestInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get blockVersion => $_getI64(1);
  @$pb.TagNumber(2)
  set blockVersion($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockVersion() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get p2pVersion => $_getI64(2);
  @$pb.TagNumber(3)
  set p2pVersion($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasP2pVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearP2pVersion() => clearField(3);
}

class RequestSetOption extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestSetOption', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..aOS(2, 'value')
    ..hasRequiredFields = false
  ;

  RequestSetOption._() : super();
  factory RequestSetOption() => create();
  factory RequestSetOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestSetOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestSetOption clone() => RequestSetOption()..mergeFromMessage(this);
  RequestSetOption copyWith(void Function(RequestSetOption) updates) => super.copyWith((message) => updates(message as RequestSetOption));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestSetOption create() => RequestSetOption._();
  RequestSetOption createEmptyInstance() => create();
  static $pb.PbList<RequestSetOption> createRepeated() => $pb.PbList<RequestSetOption>();
  @$core.pragma('dart2js:noInline')
  static RequestSetOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestSetOption>(create);
  static RequestSetOption _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class RequestInitChain extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestInitChain', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, 'time', subBuilder: $0.Timestamp.create)
    ..aOS(2, 'chainId')
    ..aOM<ConsensusParams>(3, 'consensusParams', subBuilder: ConsensusParams.create)
    ..pc<ValidatorUpdate>(4, 'validators', $pb.PbFieldType.PM, subBuilder: ValidatorUpdate.create)
    ..a<$core.List<$core.int>>(5, 'appStateBytes', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RequestInitChain._() : super();
  factory RequestInitChain() => create();
  factory RequestInitChain.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestInitChain.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestInitChain clone() => RequestInitChain()..mergeFromMessage(this);
  RequestInitChain copyWith(void Function(RequestInitChain) updates) => super.copyWith((message) => updates(message as RequestInitChain));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestInitChain create() => RequestInitChain._();
  RequestInitChain createEmptyInstance() => create();
  static $pb.PbList<RequestInitChain> createRepeated() => $pb.PbList<RequestInitChain>();
  @$core.pragma('dart2js:noInline')
  static RequestInitChain getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestInitChain>(create);
  static RequestInitChain _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get time => $_getN(0);
  @$pb.TagNumber(1)
  set time($0.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearTime() => clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureTime() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get chainId => $_getSZ(1);
  @$pb.TagNumber(2)
  set chainId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChainId() => $_has(1);
  @$pb.TagNumber(2)
  void clearChainId() => clearField(2);

  @$pb.TagNumber(3)
  ConsensusParams get consensusParams => $_getN(2);
  @$pb.TagNumber(3)
  set consensusParams(ConsensusParams v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasConsensusParams() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsensusParams() => clearField(3);
  @$pb.TagNumber(3)
  ConsensusParams ensureConsensusParams() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<ValidatorUpdate> get validators => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get appStateBytes => $_getN(4);
  @$pb.TagNumber(5)
  set appStateBytes($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAppStateBytes() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppStateBytes() => clearField(5);
}

class RequestQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestQuery', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'data', $pb.PbFieldType.OY)
    ..aOS(2, 'path')
    ..aInt64(3, 'height')
    ..aOB(4, 'prove')
    ..hasRequiredFields = false
  ;

  RequestQuery._() : super();
  factory RequestQuery() => create();
  factory RequestQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestQuery clone() => RequestQuery()..mergeFromMessage(this);
  RequestQuery copyWith(void Function(RequestQuery) updates) => super.copyWith((message) => updates(message as RequestQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestQuery create() => RequestQuery._();
  RequestQuery createEmptyInstance() => create();
  static $pb.PbList<RequestQuery> createRepeated() => $pb.PbList<RequestQuery>();
  @$core.pragma('dart2js:noInline')
  static RequestQuery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestQuery>(create);
  static RequestQuery _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get height => $_getI64(2);
  @$pb.TagNumber(3)
  set height($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get prove => $_getBF(3);
  @$pb.TagNumber(4)
  set prove($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProve() => $_has(3);
  @$pb.TagNumber(4)
  void clearProve() => clearField(4);
}

class RequestBeginBlock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestBeginBlock', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'hash', $pb.PbFieldType.OY)
    ..aOM<Header>(2, 'header', subBuilder: Header.create)
    ..aOM<LastCommitInfo>(3, 'lastCommitInfo', subBuilder: LastCommitInfo.create)
    ..pc<Evidence>(4, 'byzantineValidators', $pb.PbFieldType.PM, subBuilder: Evidence.create)
    ..hasRequiredFields = false
  ;

  RequestBeginBlock._() : super();
  factory RequestBeginBlock() => create();
  factory RequestBeginBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestBeginBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestBeginBlock clone() => RequestBeginBlock()..mergeFromMessage(this);
  RequestBeginBlock copyWith(void Function(RequestBeginBlock) updates) => super.copyWith((message) => updates(message as RequestBeginBlock));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestBeginBlock create() => RequestBeginBlock._();
  RequestBeginBlock createEmptyInstance() => create();
  static $pb.PbList<RequestBeginBlock> createRepeated() => $pb.PbList<RequestBeginBlock>();
  @$core.pragma('dart2js:noInline')
  static RequestBeginBlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestBeginBlock>(create);
  static RequestBeginBlock _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(2)
  Header get header => $_getN(1);
  @$pb.TagNumber(2)
  set header(Header v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeader() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeader() => clearField(2);
  @$pb.TagNumber(2)
  Header ensureHeader() => $_ensure(1);

  @$pb.TagNumber(3)
  LastCommitInfo get lastCommitInfo => $_getN(2);
  @$pb.TagNumber(3)
  set lastCommitInfo(LastCommitInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastCommitInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastCommitInfo() => clearField(3);
  @$pb.TagNumber(3)
  LastCommitInfo ensureLastCommitInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<Evidence> get byzantineValidators => $_getList(3);
}

class RequestCheckTx extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestCheckTx', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'tx', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RequestCheckTx._() : super();
  factory RequestCheckTx() => create();
  factory RequestCheckTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestCheckTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestCheckTx clone() => RequestCheckTx()..mergeFromMessage(this);
  RequestCheckTx copyWith(void Function(RequestCheckTx) updates) => super.copyWith((message) => updates(message as RequestCheckTx));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestCheckTx create() => RequestCheckTx._();
  RequestCheckTx createEmptyInstance() => create();
  static $pb.PbList<RequestCheckTx> createRepeated() => $pb.PbList<RequestCheckTx>();
  @$core.pragma('dart2js:noInline')
  static RequestCheckTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestCheckTx>(create);
  static RequestCheckTx _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tx => $_getN(0);
  @$pb.TagNumber(1)
  set tx($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearTx() => clearField(1);
}

class RequestDeliverTx extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestDeliverTx', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'tx', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RequestDeliverTx._() : super();
  factory RequestDeliverTx() => create();
  factory RequestDeliverTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestDeliverTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestDeliverTx clone() => RequestDeliverTx()..mergeFromMessage(this);
  RequestDeliverTx copyWith(void Function(RequestDeliverTx) updates) => super.copyWith((message) => updates(message as RequestDeliverTx));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestDeliverTx create() => RequestDeliverTx._();
  RequestDeliverTx createEmptyInstance() => create();
  static $pb.PbList<RequestDeliverTx> createRepeated() => $pb.PbList<RequestDeliverTx>();
  @$core.pragma('dart2js:noInline')
  static RequestDeliverTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestDeliverTx>(create);
  static RequestDeliverTx _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tx => $_getN(0);
  @$pb.TagNumber(1)
  set tx($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearTx() => clearField(1);
}

class RequestEndBlock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestEndBlock', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aInt64(1, 'height')
    ..hasRequiredFields = false
  ;

  RequestEndBlock._() : super();
  factory RequestEndBlock() => create();
  factory RequestEndBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestEndBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestEndBlock clone() => RequestEndBlock()..mergeFromMessage(this);
  RequestEndBlock copyWith(void Function(RequestEndBlock) updates) => super.copyWith((message) => updates(message as RequestEndBlock));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestEndBlock create() => RequestEndBlock._();
  RequestEndBlock createEmptyInstance() => create();
  static $pb.PbList<RequestEndBlock> createRepeated() => $pb.PbList<RequestEndBlock>();
  @$core.pragma('dart2js:noInline')
  static RequestEndBlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestEndBlock>(create);
  static RequestEndBlock _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get height => $_getI64(0);
  @$pb.TagNumber(1)
  set height($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);
}

class RequestCommit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestCommit', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RequestCommit._() : super();
  factory RequestCommit() => create();
  factory RequestCommit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestCommit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestCommit clone() => RequestCommit()..mergeFromMessage(this);
  RequestCommit copyWith(void Function(RequestCommit) updates) => super.copyWith((message) => updates(message as RequestCommit));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestCommit create() => RequestCommit._();
  RequestCommit createEmptyInstance() => create();
  static $pb.PbList<RequestCommit> createRepeated() => $pb.PbList<RequestCommit>();
  @$core.pragma('dart2js:noInline')
  static RequestCommit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestCommit>(create);
  static RequestCommit _defaultInstance;
}

enum Response_Value {
  exception, 
  echo, 
  flush, 
  info, 
  setOption, 
  initChain, 
  query, 
  beginBlock, 
  checkTx, 
  deliverTx, 
  endBlock, 
  commit, 
  notSet
}

class Response extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Response_Value> _Response_ValueByTag = {
    1 : Response_Value.exception,
    2 : Response_Value.echo,
    3 : Response_Value.flush,
    4 : Response_Value.info,
    5 : Response_Value.setOption,
    6 : Response_Value.initChain,
    7 : Response_Value.query,
    8 : Response_Value.beginBlock,
    9 : Response_Value.checkTx,
    10 : Response_Value.deliverTx,
    11 : Response_Value.endBlock,
    12 : Response_Value.commit,
    0 : Response_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Response', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
    ..aOM<ResponseException>(1, 'exception', subBuilder: ResponseException.create)
    ..aOM<ResponseEcho>(2, 'echo', subBuilder: ResponseEcho.create)
    ..aOM<ResponseFlush>(3, 'flush', subBuilder: ResponseFlush.create)
    ..aOM<ResponseInfo>(4, 'info', subBuilder: ResponseInfo.create)
    ..aOM<ResponseSetOption>(5, 'setOption', subBuilder: ResponseSetOption.create)
    ..aOM<ResponseInitChain>(6, 'initChain', subBuilder: ResponseInitChain.create)
    ..aOM<ResponseQuery>(7, 'query', subBuilder: ResponseQuery.create)
    ..aOM<ResponseBeginBlock>(8, 'beginBlock', subBuilder: ResponseBeginBlock.create)
    ..aOM<ResponseCheckTx>(9, 'checkTx', subBuilder: ResponseCheckTx.create)
    ..aOM<ResponseDeliverTx>(10, 'deliverTx', subBuilder: ResponseDeliverTx.create)
    ..aOM<ResponseEndBlock>(11, 'endBlock', subBuilder: ResponseEndBlock.create)
    ..aOM<ResponseCommit>(12, 'commit', subBuilder: ResponseCommit.create)
    ..hasRequiredFields = false
  ;

  Response._() : super();
  factory Response() => create();
  factory Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Response clone() => Response()..mergeFromMessage(this);
  Response copyWith(void Function(Response) updates) => super.copyWith((message) => updates(message as Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response _defaultInstance;

  Response_Value whichValue() => _Response_ValueByTag[$_whichOneof(0)];
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ResponseException get exception => $_getN(0);
  @$pb.TagNumber(1)
  set exception(ResponseException v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasException() => $_has(0);
  @$pb.TagNumber(1)
  void clearException() => clearField(1);
  @$pb.TagNumber(1)
  ResponseException ensureException() => $_ensure(0);

  @$pb.TagNumber(2)
  ResponseEcho get echo => $_getN(1);
  @$pb.TagNumber(2)
  set echo(ResponseEcho v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEcho() => $_has(1);
  @$pb.TagNumber(2)
  void clearEcho() => clearField(2);
  @$pb.TagNumber(2)
  ResponseEcho ensureEcho() => $_ensure(1);

  @$pb.TagNumber(3)
  ResponseFlush get flush => $_getN(2);
  @$pb.TagNumber(3)
  set flush(ResponseFlush v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFlush() => $_has(2);
  @$pb.TagNumber(3)
  void clearFlush() => clearField(3);
  @$pb.TagNumber(3)
  ResponseFlush ensureFlush() => $_ensure(2);

  @$pb.TagNumber(4)
  ResponseInfo get info => $_getN(3);
  @$pb.TagNumber(4)
  set info(ResponseInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);
  @$pb.TagNumber(4)
  ResponseInfo ensureInfo() => $_ensure(3);

  @$pb.TagNumber(5)
  ResponseSetOption get setOption => $_getN(4);
  @$pb.TagNumber(5)
  set setOption(ResponseSetOption v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSetOption() => $_has(4);
  @$pb.TagNumber(5)
  void clearSetOption() => clearField(5);
  @$pb.TagNumber(5)
  ResponseSetOption ensureSetOption() => $_ensure(4);

  @$pb.TagNumber(6)
  ResponseInitChain get initChain => $_getN(5);
  @$pb.TagNumber(6)
  set initChain(ResponseInitChain v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasInitChain() => $_has(5);
  @$pb.TagNumber(6)
  void clearInitChain() => clearField(6);
  @$pb.TagNumber(6)
  ResponseInitChain ensureInitChain() => $_ensure(5);

  @$pb.TagNumber(7)
  ResponseQuery get query => $_getN(6);
  @$pb.TagNumber(7)
  set query(ResponseQuery v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasQuery() => $_has(6);
  @$pb.TagNumber(7)
  void clearQuery() => clearField(7);
  @$pb.TagNumber(7)
  ResponseQuery ensureQuery() => $_ensure(6);

  @$pb.TagNumber(8)
  ResponseBeginBlock get beginBlock => $_getN(7);
  @$pb.TagNumber(8)
  set beginBlock(ResponseBeginBlock v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBeginBlock() => $_has(7);
  @$pb.TagNumber(8)
  void clearBeginBlock() => clearField(8);
  @$pb.TagNumber(8)
  ResponseBeginBlock ensureBeginBlock() => $_ensure(7);

  @$pb.TagNumber(9)
  ResponseCheckTx get checkTx => $_getN(8);
  @$pb.TagNumber(9)
  set checkTx(ResponseCheckTx v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasCheckTx() => $_has(8);
  @$pb.TagNumber(9)
  void clearCheckTx() => clearField(9);
  @$pb.TagNumber(9)
  ResponseCheckTx ensureCheckTx() => $_ensure(8);

  @$pb.TagNumber(10)
  ResponseDeliverTx get deliverTx => $_getN(9);
  @$pb.TagNumber(10)
  set deliverTx(ResponseDeliverTx v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasDeliverTx() => $_has(9);
  @$pb.TagNumber(10)
  void clearDeliverTx() => clearField(10);
  @$pb.TagNumber(10)
  ResponseDeliverTx ensureDeliverTx() => $_ensure(9);

  @$pb.TagNumber(11)
  ResponseEndBlock get endBlock => $_getN(10);
  @$pb.TagNumber(11)
  set endBlock(ResponseEndBlock v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasEndBlock() => $_has(10);
  @$pb.TagNumber(11)
  void clearEndBlock() => clearField(11);
  @$pb.TagNumber(11)
  ResponseEndBlock ensureEndBlock() => $_ensure(10);

  @$pb.TagNumber(12)
  ResponseCommit get commit => $_getN(11);
  @$pb.TagNumber(12)
  set commit(ResponseCommit v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasCommit() => $_has(11);
  @$pb.TagNumber(12)
  void clearCommit() => clearField(12);
  @$pb.TagNumber(12)
  ResponseCommit ensureCommit() => $_ensure(11);
}

class ResponseException extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseException', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOS(1, 'error')
    ..hasRequiredFields = false
  ;

  ResponseException._() : super();
  factory ResponseException() => create();
  factory ResponseException.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseException.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseException clone() => ResponseException()..mergeFromMessage(this);
  ResponseException copyWith(void Function(ResponseException) updates) => super.copyWith((message) => updates(message as ResponseException));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseException create() => ResponseException._();
  ResponseException createEmptyInstance() => create();
  static $pb.PbList<ResponseException> createRepeated() => $pb.PbList<ResponseException>();
  @$core.pragma('dart2js:noInline')
  static ResponseException getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseException>(create);
  static ResponseException _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
}

class ResponseEcho extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseEcho', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOS(1, 'message')
    ..hasRequiredFields = false
  ;

  ResponseEcho._() : super();
  factory ResponseEcho() => create();
  factory ResponseEcho.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseEcho.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseEcho clone() => ResponseEcho()..mergeFromMessage(this);
  ResponseEcho copyWith(void Function(ResponseEcho) updates) => super.copyWith((message) => updates(message as ResponseEcho));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseEcho create() => ResponseEcho._();
  ResponseEcho createEmptyInstance() => create();
  static $pb.PbList<ResponseEcho> createRepeated() => $pb.PbList<ResponseEcho>();
  @$core.pragma('dart2js:noInline')
  static ResponseEcho getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseEcho>(create);
  static ResponseEcho _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class ResponseFlush extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseFlush', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ResponseFlush._() : super();
  factory ResponseFlush() => create();
  factory ResponseFlush.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseFlush.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseFlush clone() => ResponseFlush()..mergeFromMessage(this);
  ResponseFlush copyWith(void Function(ResponseFlush) updates) => super.copyWith((message) => updates(message as ResponseFlush));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseFlush create() => ResponseFlush._();
  ResponseFlush createEmptyInstance() => create();
  static $pb.PbList<ResponseFlush> createRepeated() => $pb.PbList<ResponseFlush>();
  @$core.pragma('dart2js:noInline')
  static ResponseFlush getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseFlush>(create);
  static ResponseFlush _defaultInstance;
}

class ResponseInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseInfo', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOS(1, 'data')
    ..aOS(2, 'version')
    ..a<$fixnum.Int64>(3, 'appVersion', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(4, 'lastBlockHeight')
    ..a<$core.List<$core.int>>(5, 'lastBlockAppHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ResponseInfo._() : super();
  factory ResponseInfo() => create();
  factory ResponseInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseInfo clone() => ResponseInfo()..mergeFromMessage(this);
  ResponseInfo copyWith(void Function(ResponseInfo) updates) => super.copyWith((message) => updates(message as ResponseInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseInfo create() => ResponseInfo._();
  ResponseInfo createEmptyInstance() => create();
  static $pb.PbList<ResponseInfo> createRepeated() => $pb.PbList<ResponseInfo>();
  @$core.pragma('dart2js:noInline')
  static ResponseInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseInfo>(create);
  static ResponseInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get data => $_getSZ(0);
  @$pb.TagNumber(1)
  set data($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get appVersion => $_getI64(2);
  @$pb.TagNumber(3)
  set appVersion($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppVersion() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lastBlockHeight => $_getI64(3);
  @$pb.TagNumber(4)
  set lastBlockHeight($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastBlockHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastBlockHeight() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get lastBlockAppHash => $_getN(4);
  @$pb.TagNumber(5)
  set lastBlockAppHash($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastBlockAppHash() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastBlockAppHash() => clearField(5);
}

class ResponseSetOption extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseSetOption', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$core.int>(1, 'code', $pb.PbFieldType.OU3)
    ..aOS(3, 'log')
    ..aOS(4, 'info')
    ..hasRequiredFields = false
  ;

  ResponseSetOption._() : super();
  factory ResponseSetOption() => create();
  factory ResponseSetOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseSetOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseSetOption clone() => ResponseSetOption()..mergeFromMessage(this);
  ResponseSetOption copyWith(void Function(ResponseSetOption) updates) => super.copyWith((message) => updates(message as ResponseSetOption));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseSetOption create() => ResponseSetOption._();
  ResponseSetOption createEmptyInstance() => create();
  static $pb.PbList<ResponseSetOption> createRepeated() => $pb.PbList<ResponseSetOption>();
  @$core.pragma('dart2js:noInline')
  static ResponseSetOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseSetOption>(create);
  static ResponseSetOption _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get log => $_getSZ(1);
  @$pb.TagNumber(3)
  set log($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasLog() => $_has(1);
  @$pb.TagNumber(3)
  void clearLog() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get info => $_getSZ(2);
  @$pb.TagNumber(4)
  set info($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(2);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);
}

class ResponseInitChain extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseInitChain', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOM<ConsensusParams>(1, 'consensusParams', subBuilder: ConsensusParams.create)
    ..pc<ValidatorUpdate>(2, 'validators', $pb.PbFieldType.PM, subBuilder: ValidatorUpdate.create)
    ..hasRequiredFields = false
  ;

  ResponseInitChain._() : super();
  factory ResponseInitChain() => create();
  factory ResponseInitChain.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseInitChain.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseInitChain clone() => ResponseInitChain()..mergeFromMessage(this);
  ResponseInitChain copyWith(void Function(ResponseInitChain) updates) => super.copyWith((message) => updates(message as ResponseInitChain));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseInitChain create() => ResponseInitChain._();
  ResponseInitChain createEmptyInstance() => create();
  static $pb.PbList<ResponseInitChain> createRepeated() => $pb.PbList<ResponseInitChain>();
  @$core.pragma('dart2js:noInline')
  static ResponseInitChain getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseInitChain>(create);
  static ResponseInitChain _defaultInstance;

  @$pb.TagNumber(1)
  ConsensusParams get consensusParams => $_getN(0);
  @$pb.TagNumber(1)
  set consensusParams(ConsensusParams v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsensusParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsensusParams() => clearField(1);
  @$pb.TagNumber(1)
  ConsensusParams ensureConsensusParams() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<ValidatorUpdate> get validators => $_getList(1);
}

class ResponseQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseQuery', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$core.int>(1, 'code', $pb.PbFieldType.OU3)
    ..aOS(3, 'log')
    ..aOS(4, 'info')
    ..aInt64(5, 'index')
    ..a<$core.List<$core.int>>(6, 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, 'value', $pb.PbFieldType.OY)
    ..aOM<$1.Proof>(8, 'proof', subBuilder: $1.Proof.create)
    ..aInt64(9, 'height')
    ..aOS(10, 'codespace')
    ..hasRequiredFields = false
  ;

  ResponseQuery._() : super();
  factory ResponseQuery() => create();
  factory ResponseQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseQuery clone() => ResponseQuery()..mergeFromMessage(this);
  ResponseQuery copyWith(void Function(ResponseQuery) updates) => super.copyWith((message) => updates(message as ResponseQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseQuery create() => ResponseQuery._();
  ResponseQuery createEmptyInstance() => create();
  static $pb.PbList<ResponseQuery> createRepeated() => $pb.PbList<ResponseQuery>();
  @$core.pragma('dart2js:noInline')
  static ResponseQuery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseQuery>(create);
  static ResponseQuery _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get log => $_getSZ(1);
  @$pb.TagNumber(3)
  set log($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasLog() => $_has(1);
  @$pb.TagNumber(3)
  void clearLog() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get info => $_getSZ(2);
  @$pb.TagNumber(4)
  set info($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(2);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get index => $_getI64(3);
  @$pb.TagNumber(5)
  set index($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasIndex() => $_has(3);
  @$pb.TagNumber(5)
  void clearIndex() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get key => $_getN(4);
  @$pb.TagNumber(6)
  set key($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasKey() => $_has(4);
  @$pb.TagNumber(6)
  void clearKey() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get value => $_getN(5);
  @$pb.TagNumber(7)
  set value($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasValue() => $_has(5);
  @$pb.TagNumber(7)
  void clearValue() => clearField(7);

  @$pb.TagNumber(8)
  $1.Proof get proof => $_getN(6);
  @$pb.TagNumber(8)
  set proof($1.Proof v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasProof() => $_has(6);
  @$pb.TagNumber(8)
  void clearProof() => clearField(8);
  @$pb.TagNumber(8)
  $1.Proof ensureProof() => $_ensure(6);

  @$pb.TagNumber(9)
  $fixnum.Int64 get height => $_getI64(7);
  @$pb.TagNumber(9)
  set height($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasHeight() => $_has(7);
  @$pb.TagNumber(9)
  void clearHeight() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get codespace => $_getSZ(8);
  @$pb.TagNumber(10)
  set codespace($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasCodespace() => $_has(8);
  @$pb.TagNumber(10)
  void clearCodespace() => clearField(10);
}

class ResponseBeginBlock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseBeginBlock', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..pc<$2.KVPair>(1, 'tags', $pb.PbFieldType.PM, subBuilder: $2.KVPair.create)
    ..hasRequiredFields = false
  ;

  ResponseBeginBlock._() : super();
  factory ResponseBeginBlock() => create();
  factory ResponseBeginBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseBeginBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseBeginBlock clone() => ResponseBeginBlock()..mergeFromMessage(this);
  ResponseBeginBlock copyWith(void Function(ResponseBeginBlock) updates) => super.copyWith((message) => updates(message as ResponseBeginBlock));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseBeginBlock create() => ResponseBeginBlock._();
  ResponseBeginBlock createEmptyInstance() => create();
  static $pb.PbList<ResponseBeginBlock> createRepeated() => $pb.PbList<ResponseBeginBlock>();
  @$core.pragma('dart2js:noInline')
  static ResponseBeginBlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseBeginBlock>(create);
  static ResponseBeginBlock _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.KVPair> get tags => $_getList(0);
}

class ResponseCheckTx extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseCheckTx', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$core.int>(1, 'code', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(2, 'data', $pb.PbFieldType.OY)
    ..aOS(3, 'log')
    ..aOS(4, 'info')
    ..aInt64(5, 'gasWanted')
    ..aInt64(6, 'gasUsed')
    ..pc<$2.KVPair>(7, 'tags', $pb.PbFieldType.PM, subBuilder: $2.KVPair.create)
    ..aOS(8, 'codespace')
    ..hasRequiredFields = false
  ;

  ResponseCheckTx._() : super();
  factory ResponseCheckTx() => create();
  factory ResponseCheckTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseCheckTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseCheckTx clone() => ResponseCheckTx()..mergeFromMessage(this);
  ResponseCheckTx copyWith(void Function(ResponseCheckTx) updates) => super.copyWith((message) => updates(message as ResponseCheckTx));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseCheckTx create() => ResponseCheckTx._();
  ResponseCheckTx createEmptyInstance() => create();
  static $pb.PbList<ResponseCheckTx> createRepeated() => $pb.PbList<ResponseCheckTx>();
  @$core.pragma('dart2js:noInline')
  static ResponseCheckTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseCheckTx>(create);
  static ResponseCheckTx _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setUnsignedInt32(0, v); }
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
  $core.String get info => $_getSZ(3);
  @$pb.TagNumber(4)
  set info($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get gasWanted => $_getI64(4);
  @$pb.TagNumber(5)
  set gasWanted($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGasWanted() => $_has(4);
  @$pb.TagNumber(5)
  void clearGasWanted() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get gasUsed => $_getI64(5);
  @$pb.TagNumber(6)
  set gasUsed($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGasUsed() => $_has(5);
  @$pb.TagNumber(6)
  void clearGasUsed() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$2.KVPair> get tags => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get codespace => $_getSZ(7);
  @$pb.TagNumber(8)
  set codespace($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCodespace() => $_has(7);
  @$pb.TagNumber(8)
  void clearCodespace() => clearField(8);
}

class ResponseDeliverTx extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseDeliverTx', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$core.int>(1, 'code', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(2, 'data', $pb.PbFieldType.OY)
    ..aOS(3, 'log')
    ..aOS(4, 'info')
    ..aInt64(5, 'gasWanted')
    ..aInt64(6, 'gasUsed')
    ..pc<$2.KVPair>(7, 'tags', $pb.PbFieldType.PM, subBuilder: $2.KVPair.create)
    ..aOS(8, 'codespace')
    ..hasRequiredFields = false
  ;

  ResponseDeliverTx._() : super();
  factory ResponseDeliverTx() => create();
  factory ResponseDeliverTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseDeliverTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseDeliverTx clone() => ResponseDeliverTx()..mergeFromMessage(this);
  ResponseDeliverTx copyWith(void Function(ResponseDeliverTx) updates) => super.copyWith((message) => updates(message as ResponseDeliverTx));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseDeliverTx create() => ResponseDeliverTx._();
  ResponseDeliverTx createEmptyInstance() => create();
  static $pb.PbList<ResponseDeliverTx> createRepeated() => $pb.PbList<ResponseDeliverTx>();
  @$core.pragma('dart2js:noInline')
  static ResponseDeliverTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseDeliverTx>(create);
  static ResponseDeliverTx _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setUnsignedInt32(0, v); }
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
  $core.String get info => $_getSZ(3);
  @$pb.TagNumber(4)
  set info($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get gasWanted => $_getI64(4);
  @$pb.TagNumber(5)
  set gasWanted($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGasWanted() => $_has(4);
  @$pb.TagNumber(5)
  void clearGasWanted() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get gasUsed => $_getI64(5);
  @$pb.TagNumber(6)
  set gasUsed($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGasUsed() => $_has(5);
  @$pb.TagNumber(6)
  void clearGasUsed() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$2.KVPair> get tags => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get codespace => $_getSZ(7);
  @$pb.TagNumber(8)
  set codespace($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCodespace() => $_has(7);
  @$pb.TagNumber(8)
  void clearCodespace() => clearField(8);
}

class ResponseEndBlock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseEndBlock', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..pc<ValidatorUpdate>(1, 'validatorUpdates', $pb.PbFieldType.PM, subBuilder: ValidatorUpdate.create)
    ..aOM<ConsensusParams>(2, 'consensusParamUpdates', subBuilder: ConsensusParams.create)
    ..pc<$2.KVPair>(3, 'tags', $pb.PbFieldType.PM, subBuilder: $2.KVPair.create)
    ..hasRequiredFields = false
  ;

  ResponseEndBlock._() : super();
  factory ResponseEndBlock() => create();
  factory ResponseEndBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseEndBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseEndBlock clone() => ResponseEndBlock()..mergeFromMessage(this);
  ResponseEndBlock copyWith(void Function(ResponseEndBlock) updates) => super.copyWith((message) => updates(message as ResponseEndBlock));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseEndBlock create() => ResponseEndBlock._();
  ResponseEndBlock createEmptyInstance() => create();
  static $pb.PbList<ResponseEndBlock> createRepeated() => $pb.PbList<ResponseEndBlock>();
  @$core.pragma('dart2js:noInline')
  static ResponseEndBlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseEndBlock>(create);
  static ResponseEndBlock _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ValidatorUpdate> get validatorUpdates => $_getList(0);

  @$pb.TagNumber(2)
  ConsensusParams get consensusParamUpdates => $_getN(1);
  @$pb.TagNumber(2)
  set consensusParamUpdates(ConsensusParams v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConsensusParamUpdates() => $_has(1);
  @$pb.TagNumber(2)
  void clearConsensusParamUpdates() => clearField(2);
  @$pb.TagNumber(2)
  ConsensusParams ensureConsensusParamUpdates() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$2.KVPair> get tags => $_getList(2);
}

class ResponseCommit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResponseCommit', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(2, 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ResponseCommit._() : super();
  factory ResponseCommit() => create();
  factory ResponseCommit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseCommit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResponseCommit clone() => ResponseCommit()..mergeFromMessage(this);
  ResponseCommit copyWith(void Function(ResponseCommit) updates) => super.copyWith((message) => updates(message as ResponseCommit));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseCommit create() => ResponseCommit._();
  ResponseCommit createEmptyInstance() => create();
  static $pb.PbList<ResponseCommit> createRepeated() => $pb.PbList<ResponseCommit>();
  @$core.pragma('dart2js:noInline')
  static ResponseCommit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseCommit>(create);
  static ResponseCommit _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

class ConsensusParams extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ConsensusParams', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOM<BlockSizeParams>(1, 'blockSize', subBuilder: BlockSizeParams.create)
    ..aOM<EvidenceParams>(2, 'evidence', subBuilder: EvidenceParams.create)
    ..aOM<ValidatorParams>(3, 'validator', subBuilder: ValidatorParams.create)
    ..hasRequiredFields = false
  ;

  ConsensusParams._() : super();
  factory ConsensusParams() => create();
  factory ConsensusParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConsensusParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ConsensusParams clone() => ConsensusParams()..mergeFromMessage(this);
  ConsensusParams copyWith(void Function(ConsensusParams) updates) => super.copyWith((message) => updates(message as ConsensusParams));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConsensusParams create() => ConsensusParams._();
  ConsensusParams createEmptyInstance() => create();
  static $pb.PbList<ConsensusParams> createRepeated() => $pb.PbList<ConsensusParams>();
  @$core.pragma('dart2js:noInline')
  static ConsensusParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConsensusParams>(create);
  static ConsensusParams _defaultInstance;

  @$pb.TagNumber(1)
  BlockSizeParams get blockSize => $_getN(0);
  @$pb.TagNumber(1)
  set blockSize(BlockSizeParams v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockSize() => clearField(1);
  @$pb.TagNumber(1)
  BlockSizeParams ensureBlockSize() => $_ensure(0);

  @$pb.TagNumber(2)
  EvidenceParams get evidence => $_getN(1);
  @$pb.TagNumber(2)
  set evidence(EvidenceParams v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvidence() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvidence() => clearField(2);
  @$pb.TagNumber(2)
  EvidenceParams ensureEvidence() => $_ensure(1);

  @$pb.TagNumber(3)
  ValidatorParams get validator => $_getN(2);
  @$pb.TagNumber(3)
  set validator(ValidatorParams v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValidator() => $_has(2);
  @$pb.TagNumber(3)
  void clearValidator() => clearField(3);
  @$pb.TagNumber(3)
  ValidatorParams ensureValidator() => $_ensure(2);
}

class BlockSizeParams extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockSizeParams', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aInt64(1, 'maxBytes')
    ..aInt64(2, 'maxGas')
    ..hasRequiredFields = false
  ;

  BlockSizeParams._() : super();
  factory BlockSizeParams() => create();
  factory BlockSizeParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockSizeParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockSizeParams clone() => BlockSizeParams()..mergeFromMessage(this);
  BlockSizeParams copyWith(void Function(BlockSizeParams) updates) => super.copyWith((message) => updates(message as BlockSizeParams));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockSizeParams create() => BlockSizeParams._();
  BlockSizeParams createEmptyInstance() => create();
  static $pb.PbList<BlockSizeParams> createRepeated() => $pb.PbList<BlockSizeParams>();
  @$core.pragma('dart2js:noInline')
  static BlockSizeParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockSizeParams>(create);
  static BlockSizeParams _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get maxBytes => $_getI64(0);
  @$pb.TagNumber(1)
  set maxBytes($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMaxBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxBytes() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get maxGas => $_getI64(1);
  @$pb.TagNumber(2)
  set maxGas($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxGas() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxGas() => clearField(2);
}

class EvidenceParams extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EvidenceParams', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aInt64(1, 'maxAge')
    ..hasRequiredFields = false
  ;

  EvidenceParams._() : super();
  factory EvidenceParams() => create();
  factory EvidenceParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvidenceParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EvidenceParams clone() => EvidenceParams()..mergeFromMessage(this);
  EvidenceParams copyWith(void Function(EvidenceParams) updates) => super.copyWith((message) => updates(message as EvidenceParams));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EvidenceParams create() => EvidenceParams._();
  EvidenceParams createEmptyInstance() => create();
  static $pb.PbList<EvidenceParams> createRepeated() => $pb.PbList<EvidenceParams>();
  @$core.pragma('dart2js:noInline')
  static EvidenceParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvidenceParams>(create);
  static EvidenceParams _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get maxAge => $_getI64(0);
  @$pb.TagNumber(1)
  set maxAge($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMaxAge() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxAge() => clearField(1);
}

class ValidatorParams extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ValidatorParams', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..pPS(1, 'pubKeyTypes')
    ..hasRequiredFields = false
  ;

  ValidatorParams._() : super();
  factory ValidatorParams() => create();
  factory ValidatorParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidatorParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ValidatorParams clone() => ValidatorParams()..mergeFromMessage(this);
  ValidatorParams copyWith(void Function(ValidatorParams) updates) => super.copyWith((message) => updates(message as ValidatorParams));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidatorParams create() => ValidatorParams._();
  ValidatorParams createEmptyInstance() => create();
  static $pb.PbList<ValidatorParams> createRepeated() => $pb.PbList<ValidatorParams>();
  @$core.pragma('dart2js:noInline')
  static ValidatorParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidatorParams>(create);
  static ValidatorParams _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get pubKeyTypes => $_getList(0);
}

class LastCommitInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LastCommitInfo', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$core.int>(1, 'round', $pb.PbFieldType.O3)
    ..pc<VoteInfo>(2, 'votes', $pb.PbFieldType.PM, subBuilder: VoteInfo.create)
    ..hasRequiredFields = false
  ;

  LastCommitInfo._() : super();
  factory LastCommitInfo() => create();
  factory LastCommitInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LastCommitInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LastCommitInfo clone() => LastCommitInfo()..mergeFromMessage(this);
  LastCommitInfo copyWith(void Function(LastCommitInfo) updates) => super.copyWith((message) => updates(message as LastCommitInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LastCommitInfo create() => LastCommitInfo._();
  LastCommitInfo createEmptyInstance() => create();
  static $pb.PbList<LastCommitInfo> createRepeated() => $pb.PbList<LastCommitInfo>();
  @$core.pragma('dart2js:noInline')
  static LastCommitInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LastCommitInfo>(create);
  static LastCommitInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get round => $_getIZ(0);
  @$pb.TagNumber(1)
  set round($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRound() => $_has(0);
  @$pb.TagNumber(1)
  void clearRound() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<VoteInfo> get votes => $_getList(1);
}

class Header extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Header', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOM<Version>(1, 'version', subBuilder: Version.create)
    ..aOS(2, 'chainId')
    ..aInt64(3, 'height')
    ..aOM<$0.Timestamp>(4, 'time', subBuilder: $0.Timestamp.create)
    ..aInt64(5, 'numTxs')
    ..aInt64(6, 'totalTxs')
    ..aOM<BlockID>(7, 'lastBlockId', subBuilder: BlockID.create)
    ..a<$core.List<$core.int>>(8, 'lastCommitHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(9, 'dataHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(10, 'validatorsHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(11, 'nextValidatorsHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(12, 'consensusHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(13, 'appHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(14, 'lastResultsHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(15, 'evidenceHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(16, 'proposerAddress', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Header._() : super();
  factory Header() => create();
  factory Header.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Header.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Header clone() => Header()..mergeFromMessage(this);
  Header copyWith(void Function(Header) updates) => super.copyWith((message) => updates(message as Header));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Header create() => Header._();
  Header createEmptyInstance() => create();
  static $pb.PbList<Header> createRepeated() => $pb.PbList<Header>();
  @$core.pragma('dart2js:noInline')
  static Header getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Header>(create);
  static Header _defaultInstance;

  @$pb.TagNumber(1)
  Version get version => $_getN(0);
  @$pb.TagNumber(1)
  set version(Version v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);
  @$pb.TagNumber(1)
  Version ensureVersion() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get chainId => $_getSZ(1);
  @$pb.TagNumber(2)
  set chainId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChainId() => $_has(1);
  @$pb.TagNumber(2)
  void clearChainId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get height => $_getI64(2);
  @$pb.TagNumber(3)
  set height($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);

  @$pb.TagNumber(4)
  $0.Timestamp get time => $_getN(3);
  @$pb.TagNumber(4)
  set time($0.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureTime() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get numTxs => $_getI64(4);
  @$pb.TagNumber(5)
  set numTxs($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNumTxs() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumTxs() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get totalTxs => $_getI64(5);
  @$pb.TagNumber(6)
  set totalTxs($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalTxs() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalTxs() => clearField(6);

  @$pb.TagNumber(7)
  BlockID get lastBlockId => $_getN(6);
  @$pb.TagNumber(7)
  set lastBlockId(BlockID v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastBlockId() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastBlockId() => clearField(7);
  @$pb.TagNumber(7)
  BlockID ensureLastBlockId() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.List<$core.int> get lastCommitHash => $_getN(7);
  @$pb.TagNumber(8)
  set lastCommitHash($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastCommitHash() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastCommitHash() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get dataHash => $_getN(8);
  @$pb.TagNumber(9)
  set dataHash($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDataHash() => $_has(8);
  @$pb.TagNumber(9)
  void clearDataHash() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get validatorsHash => $_getN(9);
  @$pb.TagNumber(10)
  set validatorsHash($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasValidatorsHash() => $_has(9);
  @$pb.TagNumber(10)
  void clearValidatorsHash() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get nextValidatorsHash => $_getN(10);
  @$pb.TagNumber(11)
  set nextValidatorsHash($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasNextValidatorsHash() => $_has(10);
  @$pb.TagNumber(11)
  void clearNextValidatorsHash() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.int> get consensusHash => $_getN(11);
  @$pb.TagNumber(12)
  set consensusHash($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasConsensusHash() => $_has(11);
  @$pb.TagNumber(12)
  void clearConsensusHash() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get appHash => $_getN(12);
  @$pb.TagNumber(13)
  set appHash($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAppHash() => $_has(12);
  @$pb.TagNumber(13)
  void clearAppHash() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.int> get lastResultsHash => $_getN(13);
  @$pb.TagNumber(14)
  set lastResultsHash($core.List<$core.int> v) { $_setBytes(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasLastResultsHash() => $_has(13);
  @$pb.TagNumber(14)
  void clearLastResultsHash() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.int> get evidenceHash => $_getN(14);
  @$pb.TagNumber(15)
  set evidenceHash($core.List<$core.int> v) { $_setBytes(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasEvidenceHash() => $_has(14);
  @$pb.TagNumber(15)
  void clearEvidenceHash() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<$core.int> get proposerAddress => $_getN(15);
  @$pb.TagNumber(16)
  set proposerAddress($core.List<$core.int> v) { $_setBytes(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasProposerAddress() => $_has(15);
  @$pb.TagNumber(16)
  void clearProposerAddress() => clearField(16);
}

class Version extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Version', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'Block', $pb.PbFieldType.OU6, protoName: 'Block', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, 'App', $pb.PbFieldType.OU6, protoName: 'App', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  Version._() : super();
  factory Version() => create();
  factory Version.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Version.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Version clone() => Version()..mergeFromMessage(this);
  Version copyWith(void Function(Version) updates) => super.copyWith((message) => updates(message as Version));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Version create() => Version._();
  Version createEmptyInstance() => create();
  static $pb.PbList<Version> createRepeated() => $pb.PbList<Version>();
  @$core.pragma('dart2js:noInline')
  static Version getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Version>(create);
  static Version _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get block => $_getI64(0);
  @$pb.TagNumber(1)
  set block($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlock() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get app => $_getI64(1);
  @$pb.TagNumber(2)
  set app($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApp() => $_has(1);
  @$pb.TagNumber(2)
  void clearApp() => clearField(2);
}

class BlockID extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockID', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'hash', $pb.PbFieldType.OY)
    ..aOM<PartSetHeader>(2, 'partsHeader', subBuilder: PartSetHeader.create)
    ..hasRequiredFields = false
  ;

  BlockID._() : super();
  factory BlockID() => create();
  factory BlockID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockID clone() => BlockID()..mergeFromMessage(this);
  BlockID copyWith(void Function(BlockID) updates) => super.copyWith((message) => updates(message as BlockID));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockID create() => BlockID._();
  BlockID createEmptyInstance() => create();
  static $pb.PbList<BlockID> createRepeated() => $pb.PbList<BlockID>();
  @$core.pragma('dart2js:noInline')
  static BlockID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockID>(create);
  static BlockID _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(2)
  PartSetHeader get partsHeader => $_getN(1);
  @$pb.TagNumber(2)
  set partsHeader(PartSetHeader v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPartsHeader() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartsHeader() => clearField(2);
  @$pb.TagNumber(2)
  PartSetHeader ensurePartsHeader() => $_ensure(1);
}

class PartSetHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PartSetHeader', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$core.int>(1, 'total', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, 'hash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PartSetHeader._() : super();
  factory PartSetHeader() => create();
  factory PartSetHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PartSetHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PartSetHeader clone() => PartSetHeader()..mergeFromMessage(this);
  PartSetHeader copyWith(void Function(PartSetHeader) updates) => super.copyWith((message) => updates(message as PartSetHeader));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PartSetHeader create() => PartSetHeader._();
  PartSetHeader createEmptyInstance() => create();
  static $pb.PbList<PartSetHeader> createRepeated() => $pb.PbList<PartSetHeader>();
  @$core.pragma('dart2js:noInline')
  static PartSetHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PartSetHeader>(create);
  static PartSetHeader _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get total => $_getIZ(0);
  @$pb.TagNumber(1)
  set total($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotal() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotal() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get hash => $_getN(1);
  @$pb.TagNumber(2)
  set hash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);
}

class Validator extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Validator', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'address', $pb.PbFieldType.OY)
    ..aInt64(3, 'power')
    ..hasRequiredFields = false
  ;

  Validator._() : super();
  factory Validator() => create();
  factory Validator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Validator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Validator clone() => Validator()..mergeFromMessage(this);
  Validator copyWith(void Function(Validator) updates) => super.copyWith((message) => updates(message as Validator));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Validator create() => Validator._();
  Validator createEmptyInstance() => create();
  static $pb.PbList<Validator> createRepeated() => $pb.PbList<Validator>();
  @$core.pragma('dart2js:noInline')
  static Validator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Validator>(create);
  static Validator _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get power => $_getI64(1);
  @$pb.TagNumber(3)
  set power($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasPower() => $_has(1);
  @$pb.TagNumber(3)
  void clearPower() => clearField(3);
}

class ValidatorUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ValidatorUpdate', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOM<PubKey>(1, 'pubKey', subBuilder: PubKey.create)
    ..aInt64(2, 'power')
    ..hasRequiredFields = false
  ;

  ValidatorUpdate._() : super();
  factory ValidatorUpdate() => create();
  factory ValidatorUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidatorUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ValidatorUpdate clone() => ValidatorUpdate()..mergeFromMessage(this);
  ValidatorUpdate copyWith(void Function(ValidatorUpdate) updates) => super.copyWith((message) => updates(message as ValidatorUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidatorUpdate create() => ValidatorUpdate._();
  ValidatorUpdate createEmptyInstance() => create();
  static $pb.PbList<ValidatorUpdate> createRepeated() => $pb.PbList<ValidatorUpdate>();
  @$core.pragma('dart2js:noInline')
  static ValidatorUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidatorUpdate>(create);
  static ValidatorUpdate _defaultInstance;

  @$pb.TagNumber(1)
  PubKey get pubKey => $_getN(0);
  @$pb.TagNumber(1)
  set pubKey(PubKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubKey() => clearField(1);
  @$pb.TagNumber(1)
  PubKey ensurePubKey() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get power => $_getI64(1);
  @$pb.TagNumber(2)
  set power($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPower() => $_has(1);
  @$pb.TagNumber(2)
  void clearPower() => clearField(2);
}

class VoteInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VoteInfo', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOM<Validator>(1, 'validator', subBuilder: Validator.create)
    ..aOB(2, 'signedLastBlock')
    ..hasRequiredFields = false
  ;

  VoteInfo._() : super();
  factory VoteInfo() => create();
  factory VoteInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VoteInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VoteInfo clone() => VoteInfo()..mergeFromMessage(this);
  VoteInfo copyWith(void Function(VoteInfo) updates) => super.copyWith((message) => updates(message as VoteInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VoteInfo create() => VoteInfo._();
  VoteInfo createEmptyInstance() => create();
  static $pb.PbList<VoteInfo> createRepeated() => $pb.PbList<VoteInfo>();
  @$core.pragma('dart2js:noInline')
  static VoteInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VoteInfo>(create);
  static VoteInfo _defaultInstance;

  @$pb.TagNumber(1)
  Validator get validator => $_getN(0);
  @$pb.TagNumber(1)
  set validator(Validator v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValidator() => $_has(0);
  @$pb.TagNumber(1)
  void clearValidator() => clearField(1);
  @$pb.TagNumber(1)
  Validator ensureValidator() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get signedLastBlock => $_getBF(1);
  @$pb.TagNumber(2)
  set signedLastBlock($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignedLastBlock() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignedLastBlock() => clearField(2);
}

class PubKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PubKey', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOS(1, 'type')
    ..a<$core.List<$core.int>>(2, 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PubKey._() : super();
  factory PubKey() => create();
  factory PubKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PubKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PubKey clone() => PubKey()..mergeFromMessage(this);
  PubKey copyWith(void Function(PubKey) updates) => super.copyWith((message) => updates(message as PubKey));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PubKey create() => PubKey._();
  PubKey createEmptyInstance() => create();
  static $pb.PbList<PubKey> createRepeated() => $pb.PbList<PubKey>();
  @$core.pragma('dart2js:noInline')
  static PubKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PubKey>(create);
  static PubKey _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

class Evidence extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Evidence', package: const $pb.PackageName('types'), createEmptyInstance: create)
    ..aOS(1, 'type')
    ..aOM<Validator>(2, 'validator', subBuilder: Validator.create)
    ..aInt64(3, 'height')
    ..aOM<$0.Timestamp>(4, 'time', subBuilder: $0.Timestamp.create)
    ..aInt64(5, 'totalVotingPower')
    ..hasRequiredFields = false
  ;

  Evidence._() : super();
  factory Evidence() => create();
  factory Evidence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Evidence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Evidence clone() => Evidence()..mergeFromMessage(this);
  Evidence copyWith(void Function(Evidence) updates) => super.copyWith((message) => updates(message as Evidence));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Evidence create() => Evidence._();
  Evidence createEmptyInstance() => create();
  static $pb.PbList<Evidence> createRepeated() => $pb.PbList<Evidence>();
  @$core.pragma('dart2js:noInline')
  static Evidence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Evidence>(create);
  static Evidence _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  Validator get validator => $_getN(1);
  @$pb.TagNumber(2)
  set validator(Validator v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValidator() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidator() => clearField(2);
  @$pb.TagNumber(2)
  Validator ensureValidator() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get height => $_getI64(2);
  @$pb.TagNumber(3)
  set height($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);

  @$pb.TagNumber(4)
  $0.Timestamp get time => $_getN(3);
  @$pb.TagNumber(4)
  set time($0.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureTime() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get totalVotingPower => $_getI64(4);
  @$pb.TagNumber(5)
  set totalVotingPower($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalVotingPower() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalVotingPower() => clearField(5);
}

class ABCIApplicationApi {
  $pb.RpcClient _client;
  ABCIApplicationApi(this._client);

  $async.Future<ResponseEcho> echo($pb.ClientContext ctx, RequestEcho request) {
    var emptyResponse = ResponseEcho();
    return _client.invoke<ResponseEcho>(ctx, 'ABCIApplication', 'Echo', request, emptyResponse);
  }
  $async.Future<ResponseFlush> flush($pb.ClientContext ctx, RequestFlush request) {
    var emptyResponse = ResponseFlush();
    return _client.invoke<ResponseFlush>(ctx, 'ABCIApplication', 'Flush', request, emptyResponse);
  }
  $async.Future<ResponseInfo> info($pb.ClientContext ctx, RequestInfo request) {
    var emptyResponse = ResponseInfo();
    return _client.invoke<ResponseInfo>(ctx, 'ABCIApplication', 'Info', request, emptyResponse);
  }
  $async.Future<ResponseSetOption> setOption($pb.ClientContext ctx, RequestSetOption request) {
    var emptyResponse = ResponseSetOption();
    return _client.invoke<ResponseSetOption>(ctx, 'ABCIApplication', 'SetOption', request, emptyResponse);
  }
  $async.Future<ResponseDeliverTx> deliverTx($pb.ClientContext ctx, RequestDeliverTx request) {
    var emptyResponse = ResponseDeliverTx();
    return _client.invoke<ResponseDeliverTx>(ctx, 'ABCIApplication', 'DeliverTx', request, emptyResponse);
  }
  $async.Future<ResponseCheckTx> checkTx($pb.ClientContext ctx, RequestCheckTx request) {
    var emptyResponse = ResponseCheckTx();
    return _client.invoke<ResponseCheckTx>(ctx, 'ABCIApplication', 'CheckTx', request, emptyResponse);
  }
  $async.Future<ResponseQuery> query($pb.ClientContext ctx, RequestQuery request) {
    var emptyResponse = ResponseQuery();
    return _client.invoke<ResponseQuery>(ctx, 'ABCIApplication', 'Query', request, emptyResponse);
  }
  $async.Future<ResponseCommit> commit($pb.ClientContext ctx, RequestCommit request) {
    var emptyResponse = ResponseCommit();
    return _client.invoke<ResponseCommit>(ctx, 'ABCIApplication', 'Commit', request, emptyResponse);
  }
  $async.Future<ResponseInitChain> initChain($pb.ClientContext ctx, RequestInitChain request) {
    var emptyResponse = ResponseInitChain();
    return _client.invoke<ResponseInitChain>(ctx, 'ABCIApplication', 'InitChain', request, emptyResponse);
  }
  $async.Future<ResponseBeginBlock> beginBlock($pb.ClientContext ctx, RequestBeginBlock request) {
    var emptyResponse = ResponseBeginBlock();
    return _client.invoke<ResponseBeginBlock>(ctx, 'ABCIApplication', 'BeginBlock', request, emptyResponse);
  }
  $async.Future<ResponseEndBlock> endBlock($pb.ClientContext ctx, RequestEndBlock request) {
    var emptyResponse = ResponseEndBlock();
    return _client.invoke<ResponseEndBlock>(ctx, 'ABCIApplication', 'EndBlock', request, emptyResponse);
  }
}

