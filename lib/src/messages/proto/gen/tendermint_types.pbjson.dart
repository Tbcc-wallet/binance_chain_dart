///
//  Generated code. Do not modify.
//  source: tendermint_types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use kVPairDescriptor instead')
const KVPair$json = const {
  '1': 'KVPair',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `KVPair`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kVPairDescriptor = $convert.base64Decode('CgZLVlBhaXISEAoDa2V5GAEgASgMUgNrZXkSFAoFdmFsdWUYAiABKAxSBXZhbHVl');
@$core.Deprecated('Use kI64PairDescriptor instead')
const KI64Pair$json = const {
  '1': 'KI64Pair',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
};

/// Descriptor for `KI64Pair`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kI64PairDescriptor = $convert.base64Decode('CghLSTY0UGFpchIQCgNrZXkYASABKAxSA2tleRIUCgV2YWx1ZRgCIAEoA1IFdmFsdWU=');
