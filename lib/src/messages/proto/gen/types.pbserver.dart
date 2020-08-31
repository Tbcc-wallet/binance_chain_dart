///
//  Generated code. Do not modify.
//  source: types.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'types.pb.dart' as $3;
import 'types.pbjson.dart';

export 'types.pb.dart';

abstract class ABCIApplicationServiceBase extends $pb.GeneratedService {
  $async.Future<$3.ResponseEcho> echo($pb.ServerContext ctx, $3.RequestEcho request);
  $async.Future<$3.ResponseFlush> flush($pb.ServerContext ctx, $3.RequestFlush request);
  $async.Future<$3.ResponseInfo> info($pb.ServerContext ctx, $3.RequestInfo request);
  $async.Future<$3.ResponseSetOption> setOption($pb.ServerContext ctx, $3.RequestSetOption request);
  $async.Future<$3.ResponseDeliverTx> deliverTx($pb.ServerContext ctx, $3.RequestDeliverTx request);
  $async.Future<$3.ResponseCheckTx> checkTx($pb.ServerContext ctx, $3.RequestCheckTx request);
  $async.Future<$3.ResponseQuery> query($pb.ServerContext ctx, $3.RequestQuery request);
  $async.Future<$3.ResponseCommit> commit($pb.ServerContext ctx, $3.RequestCommit request);
  $async.Future<$3.ResponseInitChain> initChain($pb.ServerContext ctx, $3.RequestInitChain request);
  $async.Future<$3.ResponseBeginBlock> beginBlock($pb.ServerContext ctx, $3.RequestBeginBlock request);
  $async.Future<$3.ResponseEndBlock> endBlock($pb.ServerContext ctx, $3.RequestEndBlock request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Echo': return $3.RequestEcho();
      case 'Flush': return $3.RequestFlush();
      case 'Info': return $3.RequestInfo();
      case 'SetOption': return $3.RequestSetOption();
      case 'DeliverTx': return $3.RequestDeliverTx();
      case 'CheckTx': return $3.RequestCheckTx();
      case 'Query': return $3.RequestQuery();
      case 'Commit': return $3.RequestCommit();
      case 'InitChain': return $3.RequestInitChain();
      case 'BeginBlock': return $3.RequestBeginBlock();
      case 'EndBlock': return $3.RequestEndBlock();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Echo': return this.echo(ctx, request);
      case 'Flush': return this.flush(ctx, request);
      case 'Info': return this.info(ctx, request);
      case 'SetOption': return this.setOption(ctx, request);
      case 'DeliverTx': return this.deliverTx(ctx, request);
      case 'CheckTx': return this.checkTx(ctx, request);
      case 'Query': return this.query(ctx, request);
      case 'Commit': return this.commit(ctx, request);
      case 'InitChain': return this.initChain(ctx, request);
      case 'BeginBlock': return this.beginBlock(ctx, request);
      case 'EndBlock': return this.endBlock(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ABCIApplicationServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => ABCIApplicationServiceBase$messageJson;
}

