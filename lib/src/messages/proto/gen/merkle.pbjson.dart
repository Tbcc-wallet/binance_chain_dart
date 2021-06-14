///
//  Generated code. Do not modify.
//  source: merkle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use proofOpDescriptor instead')
const ProofOp$json = const {
  '1': 'ProofOp',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'key', '3': 2, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `ProofOp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List proofOpDescriptor = $convert.base64Decode('CgdQcm9vZk9wEhIKBHR5cGUYASABKAlSBHR5cGUSEAoDa2V5GAIgASgMUgNrZXkSEgoEZGF0YRgDIAEoDFIEZGF0YQ==');
@$core.Deprecated('Use proofDescriptor instead')
const Proof$json = const {
  '1': 'Proof',
  '2': const [
    const {'1': 'ops', '3': 1, '4': 3, '5': 11, '6': '.merkle.ProofOp', '8': const {}, '10': 'ops'},
  ],
};

/// Descriptor for `Proof`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List proofDescriptor = $convert.base64Decode('CgVQcm9vZhInCgNvcHMYASADKAsyDy5tZXJrbGUuUHJvb2ZPcEIEyN4fAFIDb3Bz');
