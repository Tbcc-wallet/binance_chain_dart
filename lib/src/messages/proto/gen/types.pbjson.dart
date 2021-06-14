///
//  Generated code. Do not modify.
//  source: types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import 'tendermint_types.pbjson.dart' as $2;
import 'merkle.pbjson.dart' as $1;
import 'google_timestamp.pbjson.dart' as $0;

@$core.Deprecated('Use requestDescriptor instead')
const Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'echo', '3': 2, '4': 1, '5': 11, '6': '.types.RequestEcho', '9': 0, '10': 'echo'},
    const {'1': 'flush', '3': 3, '4': 1, '5': 11, '6': '.types.RequestFlush', '9': 0, '10': 'flush'},
    const {'1': 'info', '3': 4, '4': 1, '5': 11, '6': '.types.RequestInfo', '9': 0, '10': 'info'},
    const {'1': 'set_option', '3': 5, '4': 1, '5': 11, '6': '.types.RequestSetOption', '9': 0, '10': 'setOption'},
    const {'1': 'init_chain', '3': 6, '4': 1, '5': 11, '6': '.types.RequestInitChain', '9': 0, '10': 'initChain'},
    const {'1': 'query', '3': 7, '4': 1, '5': 11, '6': '.types.RequestQuery', '9': 0, '10': 'query'},
    const {'1': 'begin_block', '3': 8, '4': 1, '5': 11, '6': '.types.RequestBeginBlock', '9': 0, '10': 'beginBlock'},
    const {'1': 'check_tx', '3': 9, '4': 1, '5': 11, '6': '.types.RequestCheckTx', '9': 0, '10': 'checkTx'},
    const {'1': 'deliver_tx', '3': 19, '4': 1, '5': 11, '6': '.types.RequestDeliverTx', '9': 0, '10': 'deliverTx'},
    const {'1': 'end_block', '3': 11, '4': 1, '5': 11, '6': '.types.RequestEndBlock', '9': 0, '10': 'endBlock'},
    const {'1': 'commit', '3': 12, '4': 1, '5': 11, '6': '.types.RequestCommit', '9': 0, '10': 'commit'},
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode('CgdSZXF1ZXN0EigKBGVjaG8YAiABKAsyEi50eXBlcy5SZXF1ZXN0RWNob0gAUgRlY2hvEisKBWZsdXNoGAMgASgLMhMudHlwZXMuUmVxdWVzdEZsdXNoSABSBWZsdXNoEigKBGluZm8YBCABKAsyEi50eXBlcy5SZXF1ZXN0SW5mb0gAUgRpbmZvEjgKCnNldF9vcHRpb24YBSABKAsyFy50eXBlcy5SZXF1ZXN0U2V0T3B0aW9uSABSCXNldE9wdGlvbhI4Cgppbml0X2NoYWluGAYgASgLMhcudHlwZXMuUmVxdWVzdEluaXRDaGFpbkgAUglpbml0Q2hhaW4SKwoFcXVlcnkYByABKAsyEy50eXBlcy5SZXF1ZXN0UXVlcnlIAFIFcXVlcnkSOwoLYmVnaW5fYmxvY2sYCCABKAsyGC50eXBlcy5SZXF1ZXN0QmVnaW5CbG9ja0gAUgpiZWdpbkJsb2NrEjIKCGNoZWNrX3R4GAkgASgLMhUudHlwZXMuUmVxdWVzdENoZWNrVHhIAFIHY2hlY2tUeBI4CgpkZWxpdmVyX3R4GBMgASgLMhcudHlwZXMuUmVxdWVzdERlbGl2ZXJUeEgAUglkZWxpdmVyVHgSNQoJZW5kX2Jsb2NrGAsgASgLMhYudHlwZXMuUmVxdWVzdEVuZEJsb2NrSABSCGVuZEJsb2NrEi4KBmNvbW1pdBgMIAEoCzIULnR5cGVzLlJlcXVlc3RDb21taXRIAFIGY29tbWl0QgcKBXZhbHVl');
@$core.Deprecated('Use requestEchoDescriptor instead')
const RequestEcho$json = const {
  '1': 'RequestEcho',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `RequestEcho`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestEchoDescriptor = $convert.base64Decode('CgtSZXF1ZXN0RWNobxIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use requestFlushDescriptor instead')
const RequestFlush$json = const {
  '1': 'RequestFlush',
};

/// Descriptor for `RequestFlush`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestFlushDescriptor = $convert.base64Decode('CgxSZXF1ZXN0Rmx1c2g=');
@$core.Deprecated('Use requestInfoDescriptor instead')
const RequestInfo$json = const {
  '1': 'RequestInfo',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'block_version', '3': 2, '4': 1, '5': 4, '10': 'blockVersion'},
    const {'1': 'p2p_version', '3': 3, '4': 1, '5': 4, '10': 'p2pVersion'},
  ],
};

/// Descriptor for `RequestInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestInfoDescriptor = $convert.base64Decode('CgtSZXF1ZXN0SW5mbxIYCgd2ZXJzaW9uGAEgASgJUgd2ZXJzaW9uEiMKDWJsb2NrX3ZlcnNpb24YAiABKARSDGJsb2NrVmVyc2lvbhIfCgtwMnBfdmVyc2lvbhgDIAEoBFIKcDJwVmVyc2lvbg==');
@$core.Deprecated('Use requestSetOptionDescriptor instead')
const RequestSetOption$json = const {
  '1': 'RequestSetOption',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `RequestSetOption`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestSetOptionDescriptor = $convert.base64Decode('ChBSZXF1ZXN0U2V0T3B0aW9uEhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZQ==');
@$core.Deprecated('Use requestInitChainDescriptor instead')
const RequestInitChain$json = const {
  '1': 'RequestInitChain',
  '2': const [
    const {'1': 'time', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'time'},
    const {'1': 'chain_id', '3': 2, '4': 1, '5': 9, '10': 'chainId'},
    const {'1': 'consensus_params', '3': 3, '4': 1, '5': 11, '6': '.types.ConsensusParams', '10': 'consensusParams'},
    const {'1': 'validators', '3': 4, '4': 3, '5': 11, '6': '.types.ValidatorUpdate', '8': const {}, '10': 'validators'},
    const {'1': 'app_state_bytes', '3': 5, '4': 1, '5': 12, '10': 'appStateBytes'},
  ],
};

/// Descriptor for `RequestInitChain`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestInitChainDescriptor = $convert.base64Decode('ChBSZXF1ZXN0SW5pdENoYWluEjgKBHRpbWUYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgjI3h8AkN8fAVIEdGltZRIZCghjaGFpbl9pZBgCIAEoCVIHY2hhaW5JZBJBChBjb25zZW5zdXNfcGFyYW1zGAMgASgLMhYudHlwZXMuQ29uc2Vuc3VzUGFyYW1zUg9jb25zZW5zdXNQYXJhbXMSPAoKdmFsaWRhdG9ycxgEIAMoCzIWLnR5cGVzLlZhbGlkYXRvclVwZGF0ZUIEyN4fAFIKdmFsaWRhdG9ycxImCg9hcHBfc3RhdGVfYnl0ZXMYBSABKAxSDWFwcFN0YXRlQnl0ZXM=');
@$core.Deprecated('Use requestQueryDescriptor instead')
const RequestQuery$json = const {
  '1': 'RequestQuery',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'height', '3': 3, '4': 1, '5': 3, '10': 'height'},
    const {'1': 'prove', '3': 4, '4': 1, '5': 8, '10': 'prove'},
  ],
};

/// Descriptor for `RequestQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestQueryDescriptor = $convert.base64Decode('CgxSZXF1ZXN0UXVlcnkSEgoEZGF0YRgBIAEoDFIEZGF0YRISCgRwYXRoGAIgASgJUgRwYXRoEhYKBmhlaWdodBgDIAEoA1IGaGVpZ2h0EhQKBXByb3ZlGAQgASgIUgVwcm92ZQ==');
@$core.Deprecated('Use requestBeginBlockDescriptor instead')
const RequestBeginBlock$json = const {
  '1': 'RequestBeginBlock',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
    const {'1': 'header', '3': 2, '4': 1, '5': 11, '6': '.types.Header', '8': const {}, '10': 'header'},
    const {'1': 'last_commit_info', '3': 3, '4': 1, '5': 11, '6': '.types.LastCommitInfo', '8': const {}, '10': 'lastCommitInfo'},
    const {'1': 'byzantine_validators', '3': 4, '4': 3, '5': 11, '6': '.types.Evidence', '8': const {}, '10': 'byzantineValidators'},
  ],
};

/// Descriptor for `RequestBeginBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestBeginBlockDescriptor = $convert.base64Decode('ChFSZXF1ZXN0QmVnaW5CbG9jaxISCgRoYXNoGAEgASgMUgRoYXNoEisKBmhlYWRlchgCIAEoCzINLnR5cGVzLkhlYWRlckIEyN4fAFIGaGVhZGVyEkUKEGxhc3RfY29tbWl0X2luZm8YAyABKAsyFS50eXBlcy5MYXN0Q29tbWl0SW5mb0IEyN4fAFIObGFzdENvbW1pdEluZm8SSAoUYnl6YW50aW5lX3ZhbGlkYXRvcnMYBCADKAsyDy50eXBlcy5FdmlkZW5jZUIEyN4fAFITYnl6YW50aW5lVmFsaWRhdG9ycw==');
@$core.Deprecated('Use requestCheckTxDescriptor instead')
const RequestCheckTx$json = const {
  '1': 'RequestCheckTx',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 1, '5': 12, '10': 'tx'},
  ],
};

/// Descriptor for `RequestCheckTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestCheckTxDescriptor = $convert.base64Decode('Cg5SZXF1ZXN0Q2hlY2tUeBIOCgJ0eBgBIAEoDFICdHg=');
@$core.Deprecated('Use requestDeliverTxDescriptor instead')
const RequestDeliverTx$json = const {
  '1': 'RequestDeliverTx',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 1, '5': 12, '10': 'tx'},
  ],
};

/// Descriptor for `RequestDeliverTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDeliverTxDescriptor = $convert.base64Decode('ChBSZXF1ZXN0RGVsaXZlclR4Eg4KAnR4GAEgASgMUgJ0eA==');
@$core.Deprecated('Use requestEndBlockDescriptor instead')
const RequestEndBlock$json = const {
  '1': 'RequestEndBlock',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 3, '10': 'height'},
  ],
};

/// Descriptor for `RequestEndBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestEndBlockDescriptor = $convert.base64Decode('Cg9SZXF1ZXN0RW5kQmxvY2sSFgoGaGVpZ2h0GAEgASgDUgZoZWlnaHQ=');
@$core.Deprecated('Use requestCommitDescriptor instead')
const RequestCommit$json = const {
  '1': 'RequestCommit',
};

/// Descriptor for `RequestCommit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestCommitDescriptor = $convert.base64Decode('Cg1SZXF1ZXN0Q29tbWl0');
@$core.Deprecated('Use responseDescriptor instead')
const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'exception', '3': 1, '4': 1, '5': 11, '6': '.types.ResponseException', '9': 0, '10': 'exception'},
    const {'1': 'echo', '3': 2, '4': 1, '5': 11, '6': '.types.ResponseEcho', '9': 0, '10': 'echo'},
    const {'1': 'flush', '3': 3, '4': 1, '5': 11, '6': '.types.ResponseFlush', '9': 0, '10': 'flush'},
    const {'1': 'info', '3': 4, '4': 1, '5': 11, '6': '.types.ResponseInfo', '9': 0, '10': 'info'},
    const {'1': 'set_option', '3': 5, '4': 1, '5': 11, '6': '.types.ResponseSetOption', '9': 0, '10': 'setOption'},
    const {'1': 'init_chain', '3': 6, '4': 1, '5': 11, '6': '.types.ResponseInitChain', '9': 0, '10': 'initChain'},
    const {'1': 'query', '3': 7, '4': 1, '5': 11, '6': '.types.ResponseQuery', '9': 0, '10': 'query'},
    const {'1': 'begin_block', '3': 8, '4': 1, '5': 11, '6': '.types.ResponseBeginBlock', '9': 0, '10': 'beginBlock'},
    const {'1': 'check_tx', '3': 9, '4': 1, '5': 11, '6': '.types.ResponseCheckTx', '9': 0, '10': 'checkTx'},
    const {'1': 'deliver_tx', '3': 10, '4': 1, '5': 11, '6': '.types.ResponseDeliverTx', '9': 0, '10': 'deliverTx'},
    const {'1': 'end_block', '3': 11, '4': 1, '5': 11, '6': '.types.ResponseEndBlock', '9': 0, '10': 'endBlock'},
    const {'1': 'commit', '3': 12, '4': 1, '5': 11, '6': '.types.ResponseCommit', '9': 0, '10': 'commit'},
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode('CghSZXNwb25zZRI4CglleGNlcHRpb24YASABKAsyGC50eXBlcy5SZXNwb25zZUV4Y2VwdGlvbkgAUglleGNlcHRpb24SKQoEZWNobxgCIAEoCzITLnR5cGVzLlJlc3BvbnNlRWNob0gAUgRlY2hvEiwKBWZsdXNoGAMgASgLMhQudHlwZXMuUmVzcG9uc2VGbHVzaEgAUgVmbHVzaBIpCgRpbmZvGAQgASgLMhMudHlwZXMuUmVzcG9uc2VJbmZvSABSBGluZm8SOQoKc2V0X29wdGlvbhgFIAEoCzIYLnR5cGVzLlJlc3BvbnNlU2V0T3B0aW9uSABSCXNldE9wdGlvbhI5Cgppbml0X2NoYWluGAYgASgLMhgudHlwZXMuUmVzcG9uc2VJbml0Q2hhaW5IAFIJaW5pdENoYWluEiwKBXF1ZXJ5GAcgASgLMhQudHlwZXMuUmVzcG9uc2VRdWVyeUgAUgVxdWVyeRI8CgtiZWdpbl9ibG9jaxgIIAEoCzIZLnR5cGVzLlJlc3BvbnNlQmVnaW5CbG9ja0gAUgpiZWdpbkJsb2NrEjMKCGNoZWNrX3R4GAkgASgLMhYudHlwZXMuUmVzcG9uc2VDaGVja1R4SABSB2NoZWNrVHgSOQoKZGVsaXZlcl90eBgKIAEoCzIYLnR5cGVzLlJlc3BvbnNlRGVsaXZlclR4SABSCWRlbGl2ZXJUeBI2CgllbmRfYmxvY2sYCyABKAsyFy50eXBlcy5SZXNwb25zZUVuZEJsb2NrSABSCGVuZEJsb2NrEi8KBmNvbW1pdBgMIAEoCzIVLnR5cGVzLlJlc3BvbnNlQ29tbWl0SABSBmNvbW1pdEIHCgV2YWx1ZQ==');
@$core.Deprecated('Use responseExceptionDescriptor instead')
const ResponseException$json = const {
  '1': 'ResponseException',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `ResponseException`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseExceptionDescriptor = $convert.base64Decode('ChFSZXNwb25zZUV4Y2VwdGlvbhIUCgVlcnJvchgBIAEoCVIFZXJyb3I=');
@$core.Deprecated('Use responseEchoDescriptor instead')
const ResponseEcho$json = const {
  '1': 'ResponseEcho',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ResponseEcho`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseEchoDescriptor = $convert.base64Decode('CgxSZXNwb25zZUVjaG8SGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');
@$core.Deprecated('Use responseFlushDescriptor instead')
const ResponseFlush$json = const {
  '1': 'ResponseFlush',
};

/// Descriptor for `ResponseFlush`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseFlushDescriptor = $convert.base64Decode('Cg1SZXNwb25zZUZsdXNo');
@$core.Deprecated('Use responseInfoDescriptor instead')
const ResponseInfo$json = const {
  '1': 'ResponseInfo',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 9, '10': 'data'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'app_version', '3': 3, '4': 1, '5': 4, '10': 'appVersion'},
    const {'1': 'last_block_height', '3': 4, '4': 1, '5': 3, '10': 'lastBlockHeight'},
    const {'1': 'last_block_app_hash', '3': 5, '4': 1, '5': 12, '10': 'lastBlockAppHash'},
  ],
};

/// Descriptor for `ResponseInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseInfoDescriptor = $convert.base64Decode('CgxSZXNwb25zZUluZm8SEgoEZGF0YRgBIAEoCVIEZGF0YRIYCgd2ZXJzaW9uGAIgASgJUgd2ZXJzaW9uEh8KC2FwcF92ZXJzaW9uGAMgASgEUgphcHBWZXJzaW9uEioKEWxhc3RfYmxvY2tfaGVpZ2h0GAQgASgDUg9sYXN0QmxvY2tIZWlnaHQSLQoTbGFzdF9ibG9ja19hcHBfaGFzaBgFIAEoDFIQbGFzdEJsb2NrQXBwSGFzaA==');
@$core.Deprecated('Use responseSetOptionDescriptor instead')
const ResponseSetOption$json = const {
  '1': 'ResponseSetOption',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 13, '10': 'code'},
    const {'1': 'log', '3': 3, '4': 1, '5': 9, '10': 'log'},
    const {'1': 'info', '3': 4, '4': 1, '5': 9, '10': 'info'},
  ],
};

/// Descriptor for `ResponseSetOption`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseSetOptionDescriptor = $convert.base64Decode('ChFSZXNwb25zZVNldE9wdGlvbhISCgRjb2RlGAEgASgNUgRjb2RlEhAKA2xvZxgDIAEoCVIDbG9nEhIKBGluZm8YBCABKAlSBGluZm8=');
@$core.Deprecated('Use responseInitChainDescriptor instead')
const ResponseInitChain$json = const {
  '1': 'ResponseInitChain',
  '2': const [
    const {'1': 'consensus_params', '3': 1, '4': 1, '5': 11, '6': '.types.ConsensusParams', '10': 'consensusParams'},
    const {'1': 'validators', '3': 2, '4': 3, '5': 11, '6': '.types.ValidatorUpdate', '8': const {}, '10': 'validators'},
  ],
};

/// Descriptor for `ResponseInitChain`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseInitChainDescriptor = $convert.base64Decode('ChFSZXNwb25zZUluaXRDaGFpbhJBChBjb25zZW5zdXNfcGFyYW1zGAEgASgLMhYudHlwZXMuQ29uc2Vuc3VzUGFyYW1zUg9jb25zZW5zdXNQYXJhbXMSPAoKdmFsaWRhdG9ycxgCIAMoCzIWLnR5cGVzLlZhbGlkYXRvclVwZGF0ZUIEyN4fAFIKdmFsaWRhdG9ycw==');
@$core.Deprecated('Use responseQueryDescriptor instead')
const ResponseQuery$json = const {
  '1': 'ResponseQuery',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 13, '10': 'code'},
    const {'1': 'log', '3': 3, '4': 1, '5': 9, '10': 'log'},
    const {'1': 'info', '3': 4, '4': 1, '5': 9, '10': 'info'},
    const {'1': 'index', '3': 5, '4': 1, '5': 3, '10': 'index'},
    const {'1': 'key', '3': 6, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'value', '3': 7, '4': 1, '5': 12, '10': 'value'},
    const {'1': 'proof', '3': 8, '4': 1, '5': 11, '6': '.merkle.Proof', '10': 'proof'},
    const {'1': 'height', '3': 9, '4': 1, '5': 3, '10': 'height'},
    const {'1': 'codespace', '3': 10, '4': 1, '5': 9, '10': 'codespace'},
  ],
};

/// Descriptor for `ResponseQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseQueryDescriptor = $convert.base64Decode('Cg1SZXNwb25zZVF1ZXJ5EhIKBGNvZGUYASABKA1SBGNvZGUSEAoDbG9nGAMgASgJUgNsb2cSEgoEaW5mbxgEIAEoCVIEaW5mbxIUCgVpbmRleBgFIAEoA1IFaW5kZXgSEAoDa2V5GAYgASgMUgNrZXkSFAoFdmFsdWUYByABKAxSBXZhbHVlEiMKBXByb29mGAggASgLMg0ubWVya2xlLlByb29mUgVwcm9vZhIWCgZoZWlnaHQYCSABKANSBmhlaWdodBIcCgljb2Rlc3BhY2UYCiABKAlSCWNvZGVzcGFjZQ==');
@$core.Deprecated('Use responseBeginBlockDescriptor instead')
const ResponseBeginBlock$json = const {
  '1': 'ResponseBeginBlock',
  '2': const [
    const {'1': 'tags', '3': 1, '4': 3, '5': 11, '6': '.common.KVPair', '8': const {}, '10': 'tags'},
  ],
};

/// Descriptor for `ResponseBeginBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseBeginBlockDescriptor = $convert.base64Decode('ChJSZXNwb25zZUJlZ2luQmxvY2sSOgoEdGFncxgBIAMoCzIOLmNvbW1vbi5LVlBhaXJCFsjeHwDq3h8OdGFncyxvbWl0ZW1wdHlSBHRhZ3M=');
@$core.Deprecated('Use responseCheckTxDescriptor instead')
const ResponseCheckTx$json = const {
  '1': 'ResponseCheckTx',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 13, '10': 'code'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'log', '3': 3, '4': 1, '5': 9, '10': 'log'},
    const {'1': 'info', '3': 4, '4': 1, '5': 9, '10': 'info'},
    const {'1': 'gas_wanted', '3': 5, '4': 1, '5': 3, '10': 'gasWanted'},
    const {'1': 'gas_used', '3': 6, '4': 1, '5': 3, '10': 'gasUsed'},
    const {'1': 'tags', '3': 7, '4': 3, '5': 11, '6': '.common.KVPair', '8': const {}, '10': 'tags'},
    const {'1': 'codespace', '3': 8, '4': 1, '5': 9, '10': 'codespace'},
  ],
};

/// Descriptor for `ResponseCheckTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseCheckTxDescriptor = $convert.base64Decode('Cg9SZXNwb25zZUNoZWNrVHgSEgoEY29kZRgBIAEoDVIEY29kZRISCgRkYXRhGAIgASgMUgRkYXRhEhAKA2xvZxgDIAEoCVIDbG9nEhIKBGluZm8YBCABKAlSBGluZm8SHQoKZ2FzX3dhbnRlZBgFIAEoA1IJZ2FzV2FudGVkEhkKCGdhc191c2VkGAYgASgDUgdnYXNVc2VkEjoKBHRhZ3MYByADKAsyDi5jb21tb24uS1ZQYWlyQhbI3h8A6t4fDnRhZ3Msb21pdGVtcHR5UgR0YWdzEhwKCWNvZGVzcGFjZRgIIAEoCVIJY29kZXNwYWNl');
@$core.Deprecated('Use responseDeliverTxDescriptor instead')
const ResponseDeliverTx$json = const {
  '1': 'ResponseDeliverTx',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 13, '10': 'code'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'log', '3': 3, '4': 1, '5': 9, '10': 'log'},
    const {'1': 'info', '3': 4, '4': 1, '5': 9, '10': 'info'},
    const {'1': 'gas_wanted', '3': 5, '4': 1, '5': 3, '10': 'gasWanted'},
    const {'1': 'gas_used', '3': 6, '4': 1, '5': 3, '10': 'gasUsed'},
    const {'1': 'tags', '3': 7, '4': 3, '5': 11, '6': '.common.KVPair', '8': const {}, '10': 'tags'},
    const {'1': 'codespace', '3': 8, '4': 1, '5': 9, '10': 'codespace'},
  ],
};

/// Descriptor for `ResponseDeliverTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDeliverTxDescriptor = $convert.base64Decode('ChFSZXNwb25zZURlbGl2ZXJUeBISCgRjb2RlGAEgASgNUgRjb2RlEhIKBGRhdGEYAiABKAxSBGRhdGESEAoDbG9nGAMgASgJUgNsb2cSEgoEaW5mbxgEIAEoCVIEaW5mbxIdCgpnYXNfd2FudGVkGAUgASgDUglnYXNXYW50ZWQSGQoIZ2FzX3VzZWQYBiABKANSB2dhc1VzZWQSOgoEdGFncxgHIAMoCzIOLmNvbW1vbi5LVlBhaXJCFsjeHwDq3h8OdGFncyxvbWl0ZW1wdHlSBHRhZ3MSHAoJY29kZXNwYWNlGAggASgJUgljb2Rlc3BhY2U=');
@$core.Deprecated('Use responseEndBlockDescriptor instead')
const ResponseEndBlock$json = const {
  '1': 'ResponseEndBlock',
  '2': const [
    const {'1': 'validator_updates', '3': 1, '4': 3, '5': 11, '6': '.types.ValidatorUpdate', '8': const {}, '10': 'validatorUpdates'},
    const {'1': 'consensus_param_updates', '3': 2, '4': 1, '5': 11, '6': '.types.ConsensusParams', '10': 'consensusParamUpdates'},
    const {'1': 'tags', '3': 3, '4': 3, '5': 11, '6': '.common.KVPair', '8': const {}, '10': 'tags'},
  ],
};

/// Descriptor for `ResponseEndBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseEndBlockDescriptor = $convert.base64Decode('ChBSZXNwb25zZUVuZEJsb2NrEkkKEXZhbGlkYXRvcl91cGRhdGVzGAEgAygLMhYudHlwZXMuVmFsaWRhdG9yVXBkYXRlQgTI3h8AUhB2YWxpZGF0b3JVcGRhdGVzEk4KF2NvbnNlbnN1c19wYXJhbV91cGRhdGVzGAIgASgLMhYudHlwZXMuQ29uc2Vuc3VzUGFyYW1zUhVjb25zZW5zdXNQYXJhbVVwZGF0ZXMSOgoEdGFncxgDIAMoCzIOLmNvbW1vbi5LVlBhaXJCFsjeHwDq3h8OdGFncyxvbWl0ZW1wdHlSBHRhZ3M=');
@$core.Deprecated('Use responseCommitDescriptor instead')
const ResponseCommit$json = const {
  '1': 'ResponseCommit',
  '2': const [
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `ResponseCommit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseCommitDescriptor = $convert.base64Decode('Cg5SZXNwb25zZUNvbW1pdBISCgRkYXRhGAIgASgMUgRkYXRh');
@$core.Deprecated('Use consensusParamsDescriptor instead')
const ConsensusParams$json = const {
  '1': 'ConsensusParams',
  '2': const [
    const {'1': 'block_size', '3': 1, '4': 1, '5': 11, '6': '.types.BlockSizeParams', '10': 'blockSize'},
    const {'1': 'evidence', '3': 2, '4': 1, '5': 11, '6': '.types.EvidenceParams', '10': 'evidence'},
    const {'1': 'validator', '3': 3, '4': 1, '5': 11, '6': '.types.ValidatorParams', '10': 'validator'},
  ],
};

/// Descriptor for `ConsensusParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List consensusParamsDescriptor = $convert.base64Decode('Cg9Db25zZW5zdXNQYXJhbXMSNQoKYmxvY2tfc2l6ZRgBIAEoCzIWLnR5cGVzLkJsb2NrU2l6ZVBhcmFtc1IJYmxvY2tTaXplEjEKCGV2aWRlbmNlGAIgASgLMhUudHlwZXMuRXZpZGVuY2VQYXJhbXNSCGV2aWRlbmNlEjQKCXZhbGlkYXRvchgDIAEoCzIWLnR5cGVzLlZhbGlkYXRvclBhcmFtc1IJdmFsaWRhdG9y');
@$core.Deprecated('Use blockSizeParamsDescriptor instead')
const BlockSizeParams$json = const {
  '1': 'BlockSizeParams',
  '2': const [
    const {'1': 'max_bytes', '3': 1, '4': 1, '5': 3, '10': 'maxBytes'},
    const {'1': 'max_gas', '3': 2, '4': 1, '5': 3, '10': 'maxGas'},
  ],
};

/// Descriptor for `BlockSizeParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockSizeParamsDescriptor = $convert.base64Decode('Cg9CbG9ja1NpemVQYXJhbXMSGwoJbWF4X2J5dGVzGAEgASgDUghtYXhCeXRlcxIXCgdtYXhfZ2FzGAIgASgDUgZtYXhHYXM=');
@$core.Deprecated('Use evidenceParamsDescriptor instead')
const EvidenceParams$json = const {
  '1': 'EvidenceParams',
  '2': const [
    const {'1': 'max_age', '3': 1, '4': 1, '5': 3, '10': 'maxAge'},
  ],
};

/// Descriptor for `EvidenceParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evidenceParamsDescriptor = $convert.base64Decode('Cg5FdmlkZW5jZVBhcmFtcxIXCgdtYXhfYWdlGAEgASgDUgZtYXhBZ2U=');
@$core.Deprecated('Use validatorParamsDescriptor instead')
const ValidatorParams$json = const {
  '1': 'ValidatorParams',
  '2': const [
    const {'1': 'pub_key_types', '3': 1, '4': 3, '5': 9, '10': 'pubKeyTypes'},
  ],
};

/// Descriptor for `ValidatorParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatorParamsDescriptor = $convert.base64Decode('Cg9WYWxpZGF0b3JQYXJhbXMSIgoNcHViX2tleV90eXBlcxgBIAMoCVILcHViS2V5VHlwZXM=');
@$core.Deprecated('Use lastCommitInfoDescriptor instead')
const LastCommitInfo$json = const {
  '1': 'LastCommitInfo',
  '2': const [
    const {'1': 'round', '3': 1, '4': 1, '5': 5, '10': 'round'},
    const {'1': 'votes', '3': 2, '4': 3, '5': 11, '6': '.types.VoteInfo', '8': const {}, '10': 'votes'},
  ],
};

/// Descriptor for `LastCommitInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lastCommitInfoDescriptor = $convert.base64Decode('Cg5MYXN0Q29tbWl0SW5mbxIUCgVyb3VuZBgBIAEoBVIFcm91bmQSKwoFdm90ZXMYAiADKAsyDy50eXBlcy5Wb3RlSW5mb0IEyN4fAFIFdm90ZXM=');
@$core.Deprecated('Use headerDescriptor instead')
const Header$json = const {
  '1': 'Header',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 11, '6': '.types.Version', '8': const {}, '10': 'version'},
    const {'1': 'chain_id', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'chainId'},
    const {'1': 'height', '3': 3, '4': 1, '5': 3, '10': 'height'},
    const {'1': 'time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'time'},
    const {'1': 'num_txs', '3': 5, '4': 1, '5': 3, '10': 'numTxs'},
    const {'1': 'total_txs', '3': 6, '4': 1, '5': 3, '10': 'totalTxs'},
    const {'1': 'last_block_id', '3': 7, '4': 1, '5': 11, '6': '.types.BlockID', '8': const {}, '10': 'lastBlockId'},
    const {'1': 'last_commit_hash', '3': 8, '4': 1, '5': 12, '10': 'lastCommitHash'},
    const {'1': 'data_hash', '3': 9, '4': 1, '5': 12, '10': 'dataHash'},
    const {'1': 'validators_hash', '3': 10, '4': 1, '5': 12, '10': 'validatorsHash'},
    const {'1': 'next_validators_hash', '3': 11, '4': 1, '5': 12, '10': 'nextValidatorsHash'},
    const {'1': 'consensus_hash', '3': 12, '4': 1, '5': 12, '10': 'consensusHash'},
    const {'1': 'app_hash', '3': 13, '4': 1, '5': 12, '10': 'appHash'},
    const {'1': 'last_results_hash', '3': 14, '4': 1, '5': 12, '10': 'lastResultsHash'},
    const {'1': 'evidence_hash', '3': 15, '4': 1, '5': 12, '10': 'evidenceHash'},
    const {'1': 'proposer_address', '3': 16, '4': 1, '5': 12, '10': 'proposerAddress'},
  ],
};

/// Descriptor for `Header`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List headerDescriptor = $convert.base64Decode('CgZIZWFkZXISLgoHdmVyc2lvbhgBIAEoCzIOLnR5cGVzLlZlcnNpb25CBMjeHwBSB3ZlcnNpb24SJgoIY2hhaW5faWQYAiABKAlCC+LeHwdDaGFpbklEUgdjaGFpbklkEhYKBmhlaWdodBgDIAEoA1IGaGVpZ2h0EjgKBHRpbWUYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgjI3h8AkN8fAVIEdGltZRIXCgdudW1fdHhzGAUgASgDUgZudW1UeHMSGwoJdG90YWxfdHhzGAYgASgDUgh0b3RhbFR4cxI4Cg1sYXN0X2Jsb2NrX2lkGAcgASgLMg4udHlwZXMuQmxvY2tJREIEyN4fAFILbGFzdEJsb2NrSWQSKAoQbGFzdF9jb21taXRfaGFzaBgIIAEoDFIObGFzdENvbW1pdEhhc2gSGwoJZGF0YV9oYXNoGAkgASgMUghkYXRhSGFzaBInCg92YWxpZGF0b3JzX2hhc2gYCiABKAxSDnZhbGlkYXRvcnNIYXNoEjAKFG5leHRfdmFsaWRhdG9yc19oYXNoGAsgASgMUhJuZXh0VmFsaWRhdG9yc0hhc2gSJQoOY29uc2Vuc3VzX2hhc2gYDCABKAxSDWNvbnNlbnN1c0hhc2gSGQoIYXBwX2hhc2gYDSABKAxSB2FwcEhhc2gSKgoRbGFzdF9yZXN1bHRzX2hhc2gYDiABKAxSD2xhc3RSZXN1bHRzSGFzaBIjCg1ldmlkZW5jZV9oYXNoGA8gASgMUgxldmlkZW5jZUhhc2gSKQoQcHJvcG9zZXJfYWRkcmVzcxgQIAEoDFIPcHJvcG9zZXJBZGRyZXNz');
@$core.Deprecated('Use versionDescriptor instead')
const Version$json = const {
  '1': 'Version',
  '2': const [
    const {'1': 'Block', '3': 1, '4': 1, '5': 4, '10': 'Block'},
    const {'1': 'App', '3': 2, '4': 1, '5': 4, '10': 'App'},
  ],
};

/// Descriptor for `Version`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionDescriptor = $convert.base64Decode('CgdWZXJzaW9uEhQKBUJsb2NrGAEgASgEUgVCbG9jaxIQCgNBcHAYAiABKARSA0FwcA==');
@$core.Deprecated('Use blockIDDescriptor instead')
const BlockID$json = const {
  '1': 'BlockID',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
    const {'1': 'parts_header', '3': 2, '4': 1, '5': 11, '6': '.types.PartSetHeader', '8': const {}, '10': 'partsHeader'},
  ],
};

/// Descriptor for `BlockID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockIDDescriptor = $convert.base64Decode('CgdCbG9ja0lEEhIKBGhhc2gYASABKAxSBGhhc2gSPQoMcGFydHNfaGVhZGVyGAIgASgLMhQudHlwZXMuUGFydFNldEhlYWRlckIEyN4fAFILcGFydHNIZWFkZXI=');
@$core.Deprecated('Use partSetHeaderDescriptor instead')
const PartSetHeader$json = const {
  '1': 'PartSetHeader',
  '2': const [
    const {'1': 'total', '3': 1, '4': 1, '5': 5, '10': 'total'},
    const {'1': 'hash', '3': 2, '4': 1, '5': 12, '10': 'hash'},
  ],
};

/// Descriptor for `PartSetHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partSetHeaderDescriptor = $convert.base64Decode('Cg1QYXJ0U2V0SGVhZGVyEhQKBXRvdGFsGAEgASgFUgV0b3RhbBISCgRoYXNoGAIgASgMUgRoYXNo');
@$core.Deprecated('Use validatorDescriptor instead')
const Validator$json = const {
  '1': 'Validator',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    const {'1': 'power', '3': 3, '4': 1, '5': 3, '10': 'power'},
  ],
};

/// Descriptor for `Validator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatorDescriptor = $convert.base64Decode('CglWYWxpZGF0b3ISGAoHYWRkcmVzcxgBIAEoDFIHYWRkcmVzcxIUCgVwb3dlchgDIAEoA1IFcG93ZXI=');
@$core.Deprecated('Use validatorUpdateDescriptor instead')
const ValidatorUpdate$json = const {
  '1': 'ValidatorUpdate',
  '2': const [
    const {'1': 'pub_key', '3': 1, '4': 1, '5': 11, '6': '.types.PubKey', '8': const {}, '10': 'pubKey'},
    const {'1': 'power', '3': 2, '4': 1, '5': 3, '10': 'power'},
  ],
};

/// Descriptor for `ValidatorUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatorUpdateDescriptor = $convert.base64Decode('Cg9WYWxpZGF0b3JVcGRhdGUSLAoHcHViX2tleRgBIAEoCzINLnR5cGVzLlB1YktleUIEyN4fAFIGcHViS2V5EhQKBXBvd2VyGAIgASgDUgVwb3dlcg==');
@$core.Deprecated('Use voteInfoDescriptor instead')
const VoteInfo$json = const {
  '1': 'VoteInfo',
  '2': const [
    const {'1': 'validator', '3': 1, '4': 1, '5': 11, '6': '.types.Validator', '8': const {}, '10': 'validator'},
    const {'1': 'signed_last_block', '3': 2, '4': 1, '5': 8, '10': 'signedLastBlock'},
  ],
};

/// Descriptor for `VoteInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voteInfoDescriptor = $convert.base64Decode('CghWb3RlSW5mbxI0Cgl2YWxpZGF0b3IYASABKAsyEC50eXBlcy5WYWxpZGF0b3JCBMjeHwBSCXZhbGlkYXRvchIqChFzaWduZWRfbGFzdF9ibG9jaxgCIAEoCFIPc2lnbmVkTGFzdEJsb2Nr');
@$core.Deprecated('Use pubKeyDescriptor instead')
const PubKey$json = const {
  '1': 'PubKey',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `PubKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pubKeyDescriptor = $convert.base64Decode('CgZQdWJLZXkSEgoEdHlwZRgBIAEoCVIEdHlwZRISCgRkYXRhGAIgASgMUgRkYXRh');
@$core.Deprecated('Use evidenceDescriptor instead')
const Evidence$json = const {
  '1': 'Evidence',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'validator', '3': 2, '4': 1, '5': 11, '6': '.types.Validator', '8': const {}, '10': 'validator'},
    const {'1': 'height', '3': 3, '4': 1, '5': 3, '10': 'height'},
    const {'1': 'time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': const {}, '10': 'time'},
    const {'1': 'total_voting_power', '3': 5, '4': 1, '5': 3, '10': 'totalVotingPower'},
  ],
};

/// Descriptor for `Evidence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evidenceDescriptor = $convert.base64Decode('CghFdmlkZW5jZRISCgR0eXBlGAEgASgJUgR0eXBlEjQKCXZhbGlkYXRvchgCIAEoCzIQLnR5cGVzLlZhbGlkYXRvckIEyN4fAFIJdmFsaWRhdG9yEhYKBmhlaWdodBgDIAEoA1IGaGVpZ2h0EjgKBHRpbWUYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgjI3h8AkN8fAVIEdGltZRIsChJ0b3RhbF92b3RpbmdfcG93ZXIYBSABKANSEHRvdGFsVm90aW5nUG93ZXI=');
const $core.Map<$core.String, $core.dynamic> ABCIApplicationServiceBase$json = const {
  '1': 'ABCIApplication',
  '2': const [
    const {'1': 'Echo', '2': '.types.RequestEcho', '3': '.types.ResponseEcho'},
    const {'1': 'Flush', '2': '.types.RequestFlush', '3': '.types.ResponseFlush'},
    const {'1': 'Info', '2': '.types.RequestInfo', '3': '.types.ResponseInfo'},
    const {'1': 'SetOption', '2': '.types.RequestSetOption', '3': '.types.ResponseSetOption'},
    const {'1': 'DeliverTx', '2': '.types.RequestDeliverTx', '3': '.types.ResponseDeliverTx'},
    const {'1': 'CheckTx', '2': '.types.RequestCheckTx', '3': '.types.ResponseCheckTx'},
    const {'1': 'Query', '2': '.types.RequestQuery', '3': '.types.ResponseQuery'},
    const {'1': 'Commit', '2': '.types.RequestCommit', '3': '.types.ResponseCommit'},
    const {'1': 'InitChain', '2': '.types.RequestInitChain', '3': '.types.ResponseInitChain'},
    const {'1': 'BeginBlock', '2': '.types.RequestBeginBlock', '3': '.types.ResponseBeginBlock'},
    const {'1': 'EndBlock', '2': '.types.RequestEndBlock', '3': '.types.ResponseEndBlock'},
  ],
};

@$core.Deprecated('Use aBCIApplicationServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> ABCIApplicationServiceBase$messageJson = const {
  '.types.RequestEcho': RequestEcho$json,
  '.types.ResponseEcho': ResponseEcho$json,
  '.types.RequestFlush': RequestFlush$json,
  '.types.ResponseFlush': ResponseFlush$json,
  '.types.RequestInfo': RequestInfo$json,
  '.types.ResponseInfo': ResponseInfo$json,
  '.types.RequestSetOption': RequestSetOption$json,
  '.types.ResponseSetOption': ResponseSetOption$json,
  '.types.RequestDeliverTx': RequestDeliverTx$json,
  '.types.ResponseDeliverTx': ResponseDeliverTx$json,
  '.common.KVPair': $2.KVPair$json,
  '.types.RequestCheckTx': RequestCheckTx$json,
  '.types.ResponseCheckTx': ResponseCheckTx$json,
  '.types.RequestQuery': RequestQuery$json,
  '.types.ResponseQuery': ResponseQuery$json,
  '.merkle.Proof': $1.Proof$json,
  '.merkle.ProofOp': $1.ProofOp$json,
  '.types.RequestCommit': RequestCommit$json,
  '.types.ResponseCommit': ResponseCommit$json,
  '.types.RequestInitChain': RequestInitChain$json,
  '.google.protobuf.Timestamp': $0.Timestamp$json,
  '.types.ConsensusParams': ConsensusParams$json,
  '.types.BlockSizeParams': BlockSizeParams$json,
  '.types.EvidenceParams': EvidenceParams$json,
  '.types.ValidatorParams': ValidatorParams$json,
  '.types.ValidatorUpdate': ValidatorUpdate$json,
  '.types.PubKey': PubKey$json,
  '.types.ResponseInitChain': ResponseInitChain$json,
  '.types.RequestBeginBlock': RequestBeginBlock$json,
  '.types.Header': Header$json,
  '.types.Version': Version$json,
  '.types.BlockID': BlockID$json,
  '.types.PartSetHeader': PartSetHeader$json,
  '.types.LastCommitInfo': LastCommitInfo$json,
  '.types.VoteInfo': VoteInfo$json,
  '.types.Validator': Validator$json,
  '.types.Evidence': Evidence$json,
  '.types.ResponseBeginBlock': ResponseBeginBlock$json,
  '.types.RequestEndBlock': RequestEndBlock$json,
  '.types.ResponseEndBlock': ResponseEndBlock$json,
};

/// Descriptor for `ABCIApplication`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List aBCIApplicationServiceDescriptor = $convert.base64Decode('Cg9BQkNJQXBwbGljYXRpb24SLwoERWNobxISLnR5cGVzLlJlcXVlc3RFY2hvGhMudHlwZXMuUmVzcG9uc2VFY2hvEjIKBUZsdXNoEhMudHlwZXMuUmVxdWVzdEZsdXNoGhQudHlwZXMuUmVzcG9uc2VGbHVzaBIvCgRJbmZvEhIudHlwZXMuUmVxdWVzdEluZm8aEy50eXBlcy5SZXNwb25zZUluZm8SPgoJU2V0T3B0aW9uEhcudHlwZXMuUmVxdWVzdFNldE9wdGlvbhoYLnR5cGVzLlJlc3BvbnNlU2V0T3B0aW9uEj4KCURlbGl2ZXJUeBIXLnR5cGVzLlJlcXVlc3REZWxpdmVyVHgaGC50eXBlcy5SZXNwb25zZURlbGl2ZXJUeBI4CgdDaGVja1R4EhUudHlwZXMuUmVxdWVzdENoZWNrVHgaFi50eXBlcy5SZXNwb25zZUNoZWNrVHgSMgoFUXVlcnkSEy50eXBlcy5SZXF1ZXN0UXVlcnkaFC50eXBlcy5SZXNwb25zZVF1ZXJ5EjUKBkNvbW1pdBIULnR5cGVzLlJlcXVlc3RDb21taXQaFS50eXBlcy5SZXNwb25zZUNvbW1pdBI+CglJbml0Q2hhaW4SFy50eXBlcy5SZXF1ZXN0SW5pdENoYWluGhgudHlwZXMuUmVzcG9uc2VJbml0Q2hhaW4SQQoKQmVnaW5CbG9jaxIYLnR5cGVzLlJlcXVlc3RCZWdpbkJsb2NrGhkudHlwZXMuUmVzcG9uc2VCZWdpbkJsb2NrEjsKCEVuZEJsb2NrEhYudHlwZXMuUmVxdWVzdEVuZEJsb2NrGhcudHlwZXMuUmVzcG9uc2VFbmRCbG9jaw==');
