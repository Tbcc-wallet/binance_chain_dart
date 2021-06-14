///
//  Generated code. Do not modify.
//  source: bridge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use transferOutMsgDescriptor instead')
const TransferOutMsg$json = const {
  '1': 'TransferOutMsg',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'to', '3': 2, '4': 1, '5': 12, '10': 'to'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 11, '6': '.bridge.TransferOutMsg.Token', '10': 'amount'},
    const {'1': 'expire_time', '3': 4, '4': 1, '5': 3, '10': 'expireTime'},
  ],
  '3': const [TransferOutMsg_Token$json],
};

@$core.Deprecated('Use transferOutMsgDescriptor instead')
const TransferOutMsg_Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
  ],
};

/// Descriptor for `TransferOutMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferOutMsgDescriptor = $convert.base64Decode('Cg5UcmFuc2Zlck91dE1zZxISCgRmcm9tGAEgASgMUgRmcm9tEg4KAnRvGAIgASgMUgJ0bxI0CgZhbW91bnQYAyABKAsyHC5icmlkZ2UuVHJhbnNmZXJPdXRNc2cuVG9rZW5SBmFtb3VudBIfCgtleHBpcmVfdGltZRgEIAEoA1IKZXhwaXJlVGltZRo1CgVUb2tlbhIUCgVkZW5vbRgBIAEoCVIFZGVub20SFgoGYW1vdW50GAIgASgDUgZhbW91bnQ=');
