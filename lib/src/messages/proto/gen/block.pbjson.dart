///
//  Generated code. Do not modify.
//  source: block.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use partSetHeaderDescriptor instead')
const PartSetHeader$json = const {
  '1': 'PartSetHeader',
  '2': const [
    const {'1': 'Total', '3': 1, '4': 1, '5': 5, '10': 'Total'},
    const {'1': 'Hash', '3': 2, '4': 1, '5': 12, '10': 'Hash'},
  ],
};

/// Descriptor for `PartSetHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partSetHeaderDescriptor = $convert.base64Decode('Cg1QYXJ0U2V0SGVhZGVyEhQKBVRvdGFsGAEgASgFUgVUb3RhbBISCgRIYXNoGAIgASgMUgRIYXNo');
@$core.Deprecated('Use blockIDDescriptor instead')
const BlockID$json = const {
  '1': 'BlockID',
  '2': const [
    const {'1': 'Hash', '3': 1, '4': 1, '5': 12, '10': 'Hash'},
    const {'1': 'PartsHeader', '3': 2, '4': 1, '5': 11, '6': '.proto3.PartSetHeader', '10': 'PartsHeader'},
  ],
};

/// Descriptor for `BlockID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockIDDescriptor = $convert.base64Decode('CgdCbG9ja0lEEhIKBEhhc2gYASABKAxSBEhhc2gSNwoLUGFydHNIZWFkZXIYAiABKAsyFS5wcm90bzMuUGFydFNldEhlYWRlclILUGFydHNIZWFkZXI=');
@$core.Deprecated('Use headerDescriptor instead')
const Header$json = const {
  '1': 'Header',
  '2': const [
    const {'1': 'Version', '3': 1, '4': 1, '5': 11, '6': '.proto3.Version', '10': 'Version'},
    const {'1': 'ChainID', '3': 2, '4': 1, '5': 9, '10': 'ChainID'},
    const {'1': 'Height', '3': 3, '4': 1, '5': 3, '10': 'Height'},
    const {'1': 'Time', '3': 4, '4': 1, '5': 11, '6': '.proto3.Timestamp', '10': 'Time'},
    const {'1': 'NumTxs', '3': 5, '4': 1, '5': 3, '10': 'NumTxs'},
    const {'1': 'TotalTxs', '3': 6, '4': 1, '5': 3, '10': 'TotalTxs'},
    const {'1': 'LastBlockID', '3': 7, '4': 1, '5': 11, '6': '.proto3.BlockID', '10': 'LastBlockID'},
    const {'1': 'LastCommitHash', '3': 8, '4': 1, '5': 12, '10': 'LastCommitHash'},
    const {'1': 'DataHash', '3': 9, '4': 1, '5': 12, '10': 'DataHash'},
    const {'1': 'ValidatorsHash', '3': 10, '4': 1, '5': 12, '10': 'ValidatorsHash'},
    const {'1': 'NextValidatorsHash', '3': 11, '4': 1, '5': 12, '10': 'NextValidatorsHash'},
    const {'1': 'ConsensusHash', '3': 12, '4': 1, '5': 12, '10': 'ConsensusHash'},
    const {'1': 'AppHash', '3': 13, '4': 1, '5': 12, '10': 'AppHash'},
    const {'1': 'LastResultsHash', '3': 14, '4': 1, '5': 12, '10': 'LastResultsHash'},
    const {'1': 'EvidenceHash', '3': 15, '4': 1, '5': 12, '10': 'EvidenceHash'},
    const {'1': 'ProposerAddress', '3': 16, '4': 1, '5': 12, '10': 'ProposerAddress'},
  ],
};

/// Descriptor for `Header`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List headerDescriptor = $convert.base64Decode('CgZIZWFkZXISKQoHVmVyc2lvbhgBIAEoCzIPLnByb3RvMy5WZXJzaW9uUgdWZXJzaW9uEhgKB0NoYWluSUQYAiABKAlSB0NoYWluSUQSFgoGSGVpZ2h0GAMgASgDUgZIZWlnaHQSJQoEVGltZRgEIAEoCzIRLnByb3RvMy5UaW1lc3RhbXBSBFRpbWUSFgoGTnVtVHhzGAUgASgDUgZOdW1UeHMSGgoIVG90YWxUeHMYBiABKANSCFRvdGFsVHhzEjEKC0xhc3RCbG9ja0lEGAcgASgLMg8ucHJvdG8zLkJsb2NrSURSC0xhc3RCbG9ja0lEEiYKDkxhc3RDb21taXRIYXNoGAggASgMUg5MYXN0Q29tbWl0SGFzaBIaCghEYXRhSGFzaBgJIAEoDFIIRGF0YUhhc2gSJgoOVmFsaWRhdG9yc0hhc2gYCiABKAxSDlZhbGlkYXRvcnNIYXNoEi4KEk5leHRWYWxpZGF0b3JzSGFzaBgLIAEoDFISTmV4dFZhbGlkYXRvcnNIYXNoEiQKDUNvbnNlbnN1c0hhc2gYDCABKAxSDUNvbnNlbnN1c0hhc2gSGAoHQXBwSGFzaBgNIAEoDFIHQXBwSGFzaBIoCg9MYXN0UmVzdWx0c0hhc2gYDiABKAxSD0xhc3RSZXN1bHRzSGFzaBIiCgxFdmlkZW5jZUhhc2gYDyABKAxSDEV2aWRlbmNlSGFzaBIoCg9Qcm9wb3NlckFkZHJlc3MYECABKAxSD1Byb3Bvc2VyQWRkcmVzcw==');
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
@$core.Deprecated('Use timestampDescriptor instead')
const Timestamp$json = const {
  '1': 'Timestamp',
  '2': const [
    const {'1': 'seconds', '3': 1, '4': 1, '5': 3, '10': 'seconds'},
    const {'1': 'nanos', '3': 2, '4': 1, '5': 5, '10': 'nanos'},
  ],
};

/// Descriptor for `Timestamp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timestampDescriptor = $convert.base64Decode('CglUaW1lc3RhbXASGAoHc2Vjb25kcxgBIAEoA1IHc2Vjb25kcxIUCgVuYW5vcxgCIAEoBVIFbmFub3M=');
