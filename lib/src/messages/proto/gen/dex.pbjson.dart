///
//  Generated code. Do not modify.
//  source: dex.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use stdTxDescriptor instead')
const StdTx$json = const {
  '1': 'StdTx',
  '2': const [
    const {'1': 'msgs', '3': 1, '4': 3, '5': 12, '10': 'msgs'},
    const {'1': 'signatures', '3': 2, '4': 3, '5': 12, '10': 'signatures'},
    const {'1': 'memo', '3': 3, '4': 1, '5': 9, '10': 'memo'},
    const {'1': 'source', '3': 4, '4': 1, '5': 3, '10': 'source'},
    const {'1': 'data', '3': 5, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `StdTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stdTxDescriptor = $convert.base64Decode('CgVTdGRUeBISCgRtc2dzGAEgAygMUgRtc2dzEh4KCnNpZ25hdHVyZXMYAiADKAxSCnNpZ25hdHVyZXMSEgoEbWVtbxgDIAEoCVIEbWVtbxIWCgZzb3VyY2UYBCABKANSBnNvdXJjZRISCgRkYXRhGAUgASgMUgRkYXRh');
@$core.Deprecated('Use stdSignatureDescriptor instead')
const StdSignature$json = const {
  '1': 'StdSignature',
  '2': const [
    const {'1': 'pub_key', '3': 1, '4': 1, '5': 12, '10': 'pubKey'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'account_number', '3': 3, '4': 1, '5': 3, '10': 'accountNumber'},
    const {'1': 'sequence', '3': 4, '4': 1, '5': 3, '10': 'sequence'},
  ],
  '3': const [StdSignature_PubKey$json],
};

@$core.Deprecated('Use stdSignatureDescriptor instead')
const StdSignature_PubKey$json = const {
  '1': 'PubKey',
};

/// Descriptor for `StdSignature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stdSignatureDescriptor = $convert.base64Decode('CgxTdGRTaWduYXR1cmUSFwoHcHViX2tleRgBIAEoDFIGcHViS2V5EhwKCXNpZ25hdHVyZRgCIAEoDFIJc2lnbmF0dXJlEiUKDmFjY291bnRfbnVtYmVyGAMgASgDUg1hY2NvdW50TnVtYmVyEhoKCHNlcXVlbmNlGAQgASgDUghzZXF1ZW5jZRoICgZQdWJLZXk=');
@$core.Deprecated('Use newOrderDescriptor instead')
const NewOrder$json = const {
  '1': 'NewOrder',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 12, '10': 'sender'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'symbol', '3': 3, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'ordertype', '3': 4, '4': 1, '5': 3, '10': 'ordertype'},
    const {'1': 'side', '3': 5, '4': 1, '5': 3, '10': 'side'},
    const {'1': 'price', '3': 6, '4': 1, '5': 3, '10': 'price'},
    const {'1': 'quantity', '3': 7, '4': 1, '5': 3, '10': 'quantity'},
    const {'1': 'timeinforce', '3': 8, '4': 1, '5': 3, '10': 'timeinforce'},
  ],
};

/// Descriptor for `NewOrder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newOrderDescriptor = $convert.base64Decode('CghOZXdPcmRlchIWCgZzZW5kZXIYASABKAxSBnNlbmRlchIOCgJpZBgCIAEoCVICaWQSFgoGc3ltYm9sGAMgASgJUgZzeW1ib2wSHAoJb3JkZXJ0eXBlGAQgASgDUglvcmRlcnR5cGUSEgoEc2lkZRgFIAEoA1IEc2lkZRIUCgVwcmljZRgGIAEoA1IFcHJpY2USGgoIcXVhbnRpdHkYByABKANSCHF1YW50aXR5EiAKC3RpbWVpbmZvcmNlGAggASgDUgt0aW1laW5mb3JjZQ==');
@$core.Deprecated('Use cancelOrderDescriptor instead')
const CancelOrder$json = const {
  '1': 'CancelOrder',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 12, '10': 'sender'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'refid', '3': 3, '4': 1, '5': 9, '10': 'refid'},
  ],
};

/// Descriptor for `CancelOrder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelOrderDescriptor = $convert.base64Decode('CgtDYW5jZWxPcmRlchIWCgZzZW5kZXIYASABKAxSBnNlbmRlchIWCgZzeW1ib2wYAiABKAlSBnN5bWJvbBIUCgVyZWZpZBgDIAEoCVIFcmVmaWQ=');
@$core.Deprecated('Use tokenFreezeDescriptor instead')
const TokenFreeze$json = const {
  '1': 'TokenFreeze',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
  ],
};

/// Descriptor for `TokenFreeze`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenFreezeDescriptor = $convert.base64Decode('CgtUb2tlbkZyZWV6ZRISCgRmcm9tGAEgASgMUgRmcm9tEhYKBnN5bWJvbBgCIAEoCVIGc3ltYm9sEhYKBmFtb3VudBgDIAEoA1IGYW1vdW50');
@$core.Deprecated('Use tokenUnfreezeDescriptor instead')
const TokenUnfreeze$json = const {
  '1': 'TokenUnfreeze',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
  ],
};

/// Descriptor for `TokenUnfreeze`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenUnfreezeDescriptor = $convert.base64Decode('Cg1Ub2tlblVuZnJlZXplEhIKBGZyb20YASABKAxSBGZyb20SFgoGc3ltYm9sGAIgASgJUgZzeW1ib2wSFgoGYW1vdW50GAMgASgDUgZhbW91bnQ=');
@$core.Deprecated('Use sendDescriptor instead')
const Send$json = const {
  '1': 'Send',
  '2': const [
    const {'1': 'inputs', '3': 1, '4': 3, '5': 11, '6': '.transaction.Send.Input', '10': 'inputs'},
    const {'1': 'outputs', '3': 2, '4': 3, '5': 11, '6': '.transaction.Send.Output', '10': 'outputs'},
  ],
  '3': const [Send_Token$json, Send_Input$json, Send_Output$json],
};

@$core.Deprecated('Use sendDescriptor instead')
const Send_Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
  ],
};

@$core.Deprecated('Use sendDescriptor instead')
const Send_Input$json = const {
  '1': 'Input',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    const {'1': 'coins', '3': 2, '4': 3, '5': 11, '6': '.transaction.Send.Token', '10': 'coins'},
  ],
};

@$core.Deprecated('Use sendDescriptor instead')
const Send_Output$json = const {
  '1': 'Output',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    const {'1': 'coins', '3': 2, '4': 3, '5': 11, '6': '.transaction.Send.Token', '10': 'coins'},
  ],
};

/// Descriptor for `Send`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendDescriptor = $convert.base64Decode('CgRTZW5kEi8KBmlucHV0cxgBIAMoCzIXLnRyYW5zYWN0aW9uLlNlbmQuSW5wdXRSBmlucHV0cxIyCgdvdXRwdXRzGAIgAygLMhgudHJhbnNhY3Rpb24uU2VuZC5PdXRwdXRSB291dHB1dHMaNQoFVG9rZW4SFAoFZGVub20YASABKAlSBWRlbm9tEhYKBmFtb3VudBgCIAEoA1IGYW1vdW50GlAKBUlucHV0EhgKB2FkZHJlc3MYASABKAxSB2FkZHJlc3MSLQoFY29pbnMYAiADKAsyFy50cmFuc2FjdGlvbi5TZW5kLlRva2VuUgVjb2lucxpRCgZPdXRwdXQSGAoHYWRkcmVzcxgBIAEoDFIHYWRkcmVzcxItCgVjb2lucxgCIAMoCzIXLnRyYW5zYWN0aW9uLlNlbmQuVG9rZW5SBWNvaW5z');
@$core.Deprecated('Use voteDescriptor instead')
const Vote$json = const {
  '1': 'Vote',
  '2': const [
    const {'1': 'proposal_id', '3': 1, '4': 1, '5': 3, '10': 'proposalId'},
    const {'1': 'voter', '3': 2, '4': 1, '5': 12, '10': 'voter'},
    const {'1': 'option', '3': 3, '4': 1, '5': 3, '10': 'option'},
  ],
};

/// Descriptor for `Vote`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voteDescriptor = $convert.base64Decode('CgRWb3RlEh8KC3Byb3Bvc2FsX2lkGAEgASgDUgpwcm9wb3NhbElkEhQKBXZvdGVyGAIgASgMUgV2b3RlchIWCgZvcHRpb24YAyABKANSBm9wdGlvbg==');
@$core.Deprecated('Use tokenDescriptor instead')
const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
  ],
};

/// Descriptor for `Token`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenDescriptor = $convert.base64Decode('CgVUb2tlbhIUCgVkZW5vbRgBIAEoCVIFZGVub20SFgoGYW1vdW50GAIgASgDUgZhbW91bnQ=');
@$core.Deprecated('Use appAccountDescriptor instead')
const AppAccount$json = const {
  '1': 'AppAccount',
  '2': const [
    const {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.transaction.AppAccount.baseAccount', '10': 'base'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'frozen', '3': 3, '4': 3, '5': 11, '6': '.transaction.Token', '10': 'frozen'},
    const {'1': 'locked', '3': 4, '4': 3, '5': 11, '6': '.transaction.Token', '10': 'locked'},
  ],
  '3': const [AppAccount_baseAccount$json],
};

@$core.Deprecated('Use appAccountDescriptor instead')
const AppAccount_baseAccount$json = const {
  '1': 'baseAccount',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    const {'1': 'coins', '3': 2, '4': 3, '5': 11, '6': '.transaction.Token', '10': 'coins'},
    const {'1': 'public_key', '3': 3, '4': 1, '5': 12, '10': 'publicKey'},
    const {'1': 'account_number', '3': 4, '4': 1, '5': 3, '10': 'accountNumber'},
    const {'1': 'sequence', '3': 5, '4': 1, '5': 3, '10': 'sequence'},
  ],
};

/// Descriptor for `AppAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appAccountDescriptor = $convert.base64Decode('CgpBcHBBY2NvdW50EjcKBGJhc2UYASABKAsyIy50cmFuc2FjdGlvbi5BcHBBY2NvdW50LmJhc2VBY2NvdW50UgRiYXNlEhIKBG5hbWUYAiABKAlSBG5hbWUSKgoGZnJvemVuGAMgAygLMhIudHJhbnNhY3Rpb24uVG9rZW5SBmZyb3plbhIqCgZsb2NrZWQYBCADKAsyEi50cmFuc2FjdGlvbi5Ub2tlblIGbG9ja2VkGrMBCgtiYXNlQWNjb3VudBIYCgdhZGRyZXNzGAEgASgMUgdhZGRyZXNzEigKBWNvaW5zGAIgAygLMhIudHJhbnNhY3Rpb24uVG9rZW5SBWNvaW5zEh0KCnB1YmxpY19rZXkYAyABKAxSCXB1YmxpY0tleRIlCg5hY2NvdW50X251bWJlchgEIAEoA1INYWNjb3VudE51bWJlchIaCghzZXF1ZW5jZRgFIAEoA1IIc2VxdWVuY2U=');
@$core.Deprecated('Use atomicSwapInfoDescriptor instead')
const AtomicSwapInfo$json = const {
  '1': 'AtomicSwapInfo',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'to', '3': 2, '4': 1, '5': 12, '10': 'to'},
    const {'1': 'out_amount', '3': 3, '4': 3, '5': 11, '6': '.transaction.Token', '10': 'outAmount'},
    const {'1': 'in_amount', '3': 4, '4': 3, '5': 11, '6': '.transaction.Token', '10': 'inAmount'},
    const {'1': 'expected_income', '3': 5, '4': 1, '5': 9, '10': 'expectedIncome'},
    const {'1': 'recipient_other_chain', '3': 6, '4': 1, '5': 12, '10': 'recipientOtherChain'},
    const {'1': 'random_number_hash', '3': 7, '4': 1, '5': 12, '10': 'randomNumberHash'},
    const {'1': 'random_number', '3': 8, '4': 1, '5': 12, '10': 'randomNumber'},
    const {'1': 'timestamp', '3': 9, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'cross_chain', '3': 10, '4': 1, '5': 8, '10': 'crossChain'},
    const {'1': 'expire_height', '3': 11, '4': 1, '5': 3, '10': 'expireHeight'},
    const {'1': 'index', '3': 12, '4': 1, '5': 3, '10': 'index'},
    const {'1': 'closed_time', '3': 13, '4': 1, '5': 3, '10': 'closedTime'},
    const {'1': 'status', '3': 14, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `AtomicSwapInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List atomicSwapInfoDescriptor = $convert.base64Decode('Cg5BdG9taWNTd2FwSW5mbxISCgRmcm9tGAEgASgMUgRmcm9tEg4KAnRvGAIgASgMUgJ0bxIxCgpvdXRfYW1vdW50GAMgAygLMhIudHJhbnNhY3Rpb24uVG9rZW5SCW91dEFtb3VudBIvCglpbl9hbW91bnQYBCADKAsyEi50cmFuc2FjdGlvbi5Ub2tlblIIaW5BbW91bnQSJwoPZXhwZWN0ZWRfaW5jb21lGAUgASgJUg5leHBlY3RlZEluY29tZRIyChVyZWNpcGllbnRfb3RoZXJfY2hhaW4YBiABKAxSE3JlY2lwaWVudE90aGVyQ2hhaW4SLAoScmFuZG9tX251bWJlcl9oYXNoGAcgASgMUhByYW5kb21OdW1iZXJIYXNoEiMKDXJhbmRvbV9udW1iZXIYCCABKAxSDHJhbmRvbU51bWJlchIcCgl0aW1lc3RhbXAYCSABKANSCXRpbWVzdGFtcBIfCgtjcm9zc19jaGFpbhgKIAEoCFIKY3Jvc3NDaGFpbhIjCg1leHBpcmVfaGVpZ2h0GAsgASgDUgxleHBpcmVIZWlnaHQSFAoFaW5kZXgYDCABKANSBWluZGV4Eh8KC2Nsb3NlZF90aW1lGA0gASgDUgpjbG9zZWRUaW1lEhYKBnN0YXR1cxgOIAEoBVIGc3RhdHVz');
@$core.Deprecated('Use tokenInfoDescriptor instead')
const TokenInfo$json = const {
  '1': 'TokenInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'original_symbol', '3': 3, '4': 1, '5': 9, '10': 'originalSymbol'},
    const {'1': 'total_supply', '3': 4, '4': 1, '5': 3, '10': 'totalSupply'},
    const {'1': 'owner', '3': 5, '4': 1, '5': 12, '10': 'owner'},
    const {'1': 'mintable', '3': 6, '4': 1, '5': 8, '10': 'mintable'},
  ],
};

/// Descriptor for `TokenInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenInfoDescriptor = $convert.base64Decode('CglUb2tlbkluZm8SEgoEbmFtZRgBIAEoCVIEbmFtZRIWCgZzeW1ib2wYAiABKAlSBnN5bWJvbBInCg9vcmlnaW5hbF9zeW1ib2wYAyABKAlSDm9yaWdpbmFsU3ltYm9sEiEKDHRvdGFsX3N1cHBseRgEIAEoA1ILdG90YWxTdXBwbHkSFAoFb3duZXIYBSABKAxSBW93bmVyEhoKCG1pbnRhYmxlGAYgASgIUghtaW50YWJsZQ==');
@$core.Deprecated('Use miniTokenInfoDescriptor instead')
const MiniTokenInfo$json = const {
  '1': 'MiniTokenInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'original_symbol', '3': 3, '4': 1, '5': 9, '10': 'originalSymbol'},
    const {'1': 'total_supply', '3': 4, '4': 1, '5': 3, '10': 'totalSupply'},
    const {'1': 'owner', '3': 5, '4': 1, '5': 12, '10': 'owner'},
    const {'1': 'mintable', '3': 6, '4': 1, '5': 8, '10': 'mintable'},
    const {'1': 'token_type', '3': 7, '4': 1, '5': 5, '10': 'tokenType'},
    const {'1': 'token_uri', '3': 8, '4': 1, '5': 9, '10': 'tokenUri'},
  ],
};

/// Descriptor for `MiniTokenInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List miniTokenInfoDescriptor = $convert.base64Decode('Cg1NaW5pVG9rZW5JbmZvEhIKBG5hbWUYASABKAlSBG5hbWUSFgoGc3ltYm9sGAIgASgJUgZzeW1ib2wSJwoPb3JpZ2luYWxfc3ltYm9sGAMgASgJUg5vcmlnaW5hbFN5bWJvbBIhCgx0b3RhbF9zdXBwbHkYBCABKANSC3RvdGFsU3VwcGx5EhQKBW93bmVyGAUgASgMUgVvd25lchIaCghtaW50YWJsZRgGIAEoCFIIbWludGFibGUSHQoKdG9rZW5fdHlwZRgHIAEoBVIJdG9rZW5UeXBlEhsKCXRva2VuX3VyaRgIIAEoCVIIdG9rZW5Vcmk=');
@$core.Deprecated('Use dexFeeParamDescriptor instead')
const DexFeeParam$json = const {
  '1': 'DexFeeParam',
  '2': const [
    const {'1': 'dex_fee_fields', '3': 1, '4': 3, '5': 11, '6': '.transaction.DexFeeParam.DexFeeField', '10': 'dexFeeFields'},
  ],
  '3': const [DexFeeParam_DexFeeField$json],
};

@$core.Deprecated('Use dexFeeParamDescriptor instead')
const DexFeeParam_DexFeeField$json = const {
  '1': 'DexFeeField',
  '2': const [
    const {'1': 'fee_name', '3': 1, '4': 1, '5': 9, '10': 'feeName'},
    const {'1': 'fee_value', '3': 2, '4': 1, '5': 3, '10': 'feeValue'},
  ],
};

/// Descriptor for `DexFeeParam`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dexFeeParamDescriptor = $convert.base64Decode('CgtEZXhGZWVQYXJhbRJKCg5kZXhfZmVlX2ZpZWxkcxgBIAMoCzIkLnRyYW5zYWN0aW9uLkRleEZlZVBhcmFtLkRleEZlZUZpZWxkUgxkZXhGZWVGaWVsZHMaRQoLRGV4RmVlRmllbGQSGQoIZmVlX25hbWUYASABKAlSB2ZlZU5hbWUSGwoJZmVlX3ZhbHVlGAIgASgDUghmZWVWYWx1ZQ==');
@$core.Deprecated('Use fixedFeeParamsDescriptor instead')
const FixedFeeParams$json = const {
  '1': 'FixedFeeParams',
  '2': const [
    const {'1': 'msg_type', '3': 1, '4': 1, '5': 9, '10': 'msgType'},
    const {'1': 'fee', '3': 2, '4': 1, '5': 3, '10': 'fee'},
    const {'1': 'fee_for', '3': 3, '4': 1, '5': 5, '10': 'feeFor'},
  ],
};

/// Descriptor for `FixedFeeParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fixedFeeParamsDescriptor = $convert.base64Decode('Cg5GaXhlZEZlZVBhcmFtcxIZCghtc2dfdHlwZRgBIAEoCVIHbXNnVHlwZRIQCgNmZWUYAiABKANSA2ZlZRIXCgdmZWVfZm9yGAMgASgFUgZmZWVGb3I=');
@$core.Deprecated('Use transferFeeParamDescriptor instead')
const TransferFeeParam$json = const {
  '1': 'TransferFeeParam',
  '2': const [
    const {'1': 'fixed_fee_params', '3': 1, '4': 1, '5': 11, '6': '.transaction.FixedFeeParams', '10': 'fixedFeeParams'},
    const {'1': 'multi_transfer_fee', '3': 2, '4': 1, '5': 3, '10': 'multiTransferFee'},
    const {'1': 'lower_limit_as_multi', '3': 3, '4': 1, '5': 3, '10': 'lowerLimitAsMulti'},
  ],
};

/// Descriptor for `TransferFeeParam`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferFeeParamDescriptor = $convert.base64Decode('ChBUcmFuc2ZlckZlZVBhcmFtEkUKEGZpeGVkX2ZlZV9wYXJhbXMYASABKAsyGy50cmFuc2FjdGlvbi5GaXhlZEZlZVBhcmFtc1IOZml4ZWRGZWVQYXJhbXMSLAoSbXVsdGlfdHJhbnNmZXJfZmVlGAIgASgDUhBtdWx0aVRyYW5zZmVyRmVlEi8KFGxvd2VyX2xpbWl0X2FzX211bHRpGAMgASgDUhFsb3dlckxpbWl0QXNNdWx0aQ==');
@$core.Deprecated('Use resultBroadcastTxDescriptor instead')
const ResultBroadcastTx$json = const {
  '1': 'ResultBroadcastTx',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'log', '3': 3, '4': 1, '5': 9, '10': 'log'},
    const {'1': 'hash', '3': 4, '4': 1, '5': 12, '10': 'hash'},
  ],
};

/// Descriptor for `ResultBroadcastTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultBroadcastTxDescriptor = $convert.base64Decode('ChFSZXN1bHRCcm9hZGNhc3RUeBISCgRjb2RlGAEgASgFUgRjb2RlEhIKBGRhdGEYAiABKAxSBGRhdGESEAoDbG9nGAMgASgJUgNsb2cSEgoEaGFzaBgEIAEoDFIEaGFzaA==');
@$core.Deprecated('Use resultBroadcastTxCommitDescriptor instead')
const ResultBroadcastTxCommit$json = const {
  '1': 'ResultBroadcastTxCommit',
  '2': const [
    const {'1': 'check_tx', '3': 1, '4': 1, '5': 11, '6': '.types.ResponseCheckTx', '10': 'checkTx'},
    const {'1': 'deliver_tx', '3': 2, '4': 1, '5': 11, '6': '.types.ResponseDeliverTx', '10': 'deliverTx'},
    const {'1': 'hash', '3': 3, '4': 1, '5': 12, '10': 'hash'},
    const {'1': 'height', '3': 4, '4': 1, '5': 3, '10': 'height'},
  ],
};

/// Descriptor for `ResultBroadcastTxCommit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultBroadcastTxCommitDescriptor = $convert.base64Decode('ChdSZXN1bHRCcm9hZGNhc3RUeENvbW1pdBIxCghjaGVja190eBgBIAEoCzIWLnR5cGVzLlJlc3BvbnNlQ2hlY2tUeFIHY2hlY2tUeBI3CgpkZWxpdmVyX3R4GAIgASgLMhgudHlwZXMuUmVzcG9uc2VEZWxpdmVyVHhSCWRlbGl2ZXJUeBISCgRoYXNoGAMgASgMUgRoYXNoEhYKBmhlaWdodBgEIAEoA1IGaGVpZ2h0');
@$core.Deprecated('Use issueDescriptor instead')
const Issue$json = const {
  '1': 'Issue',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'symbol', '3': 3, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'total_supply', '3': 4, '4': 1, '5': 3, '10': 'totalSupply'},
    const {'1': 'mintable', '3': 5, '4': 1, '5': 8, '10': 'mintable'},
  ],
};

/// Descriptor for `Issue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issueDescriptor = $convert.base64Decode('CgVJc3N1ZRISCgRmcm9tGAEgASgMUgRmcm9tEhIKBG5hbWUYAiABKAlSBG5hbWUSFgoGc3ltYm9sGAMgASgJUgZzeW1ib2wSIQoMdG90YWxfc3VwcGx5GAQgASgDUgt0b3RhbFN1cHBseRIaCghtaW50YWJsZRgFIAEoCFIIbWludGFibGU=');
@$core.Deprecated('Use burnDescriptor instead')
const Burn$json = const {
  '1': 'Burn',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
  ],
};

/// Descriptor for `Burn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List burnDescriptor = $convert.base64Decode('CgRCdXJuEhIKBGZyb20YASABKAxSBGZyb20SFgoGc3ltYm9sGAIgASgJUgZzeW1ib2wSFgoGYW1vdW50GAMgASgDUgZhbW91bnQ=');
@$core.Deprecated('Use mintDescriptor instead')
const Mint$json = const {
  '1': 'Mint',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
  ],
};

/// Descriptor for `Mint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mintDescriptor = $convert.base64Decode('CgRNaW50EhIKBGZyb20YASABKAxSBGZyb20SFgoGc3ltYm9sGAIgASgJUgZzeW1ib2wSFgoGYW1vdW50GAMgASgDUgZhbW91bnQ=');
@$core.Deprecated('Use submitProposalDescriptor instead')
const SubmitProposal$json = const {
  '1': 'SubmitProposal',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'proposal_type', '3': 3, '4': 1, '5': 3, '10': 'proposalType'},
    const {'1': 'proposer', '3': 4, '4': 1, '5': 12, '10': 'proposer'},
    const {'1': 'initial_deposit', '3': 5, '4': 3, '5': 11, '6': '.transaction.Token', '10': 'initialDeposit'},
    const {'1': 'voting_period', '3': 6, '4': 1, '5': 3, '10': 'votingPeriod'},
  ],
};

/// Descriptor for `SubmitProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List submitProposalDescriptor = $convert.base64Decode('Cg5TdWJtaXRQcm9wb3NhbBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEiMKDXByb3Bvc2FsX3R5cGUYAyABKANSDHByb3Bvc2FsVHlwZRIaCghwcm9wb3NlchgEIAEoDFIIcHJvcG9zZXISOwoPaW5pdGlhbF9kZXBvc2l0GAUgAygLMhIudHJhbnNhY3Rpb24uVG9rZW5SDmluaXRpYWxEZXBvc2l0EiMKDXZvdGluZ19wZXJpb2QYBiABKANSDHZvdGluZ1BlcmlvZA==');
@$core.Deprecated('Use depositDescriptor instead')
const Deposit$json = const {
  '1': 'Deposit',
  '2': const [
    const {'1': 'proposal_id', '3': 1, '4': 1, '5': 3, '10': 'proposalId'},
    const {'1': 'depositer', '3': 2, '4': 1, '5': 12, '10': 'depositer'},
    const {'1': 'amount', '3': 3, '4': 3, '5': 11, '6': '.transaction.Token', '10': 'amount'},
  ],
};

/// Descriptor for `Deposit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List depositDescriptor = $convert.base64Decode('CgdEZXBvc2l0Eh8KC3Byb3Bvc2FsX2lkGAEgASgDUgpwcm9wb3NhbElkEhwKCWRlcG9zaXRlchgCIAEoDFIJZGVwb3NpdGVyEioKBmFtb3VudBgDIAMoCzISLnRyYW5zYWN0aW9uLlRva2VuUgZhbW91bnQ=');
@$core.Deprecated('Use descriptionDescriptor instead')
const Description$json = const {
  '1': 'Description',
  '2': const [
    const {'1': 'moniker', '3': 1, '4': 1, '5': 9, '10': 'moniker'},
    const {'1': 'identity', '3': 2, '4': 1, '5': 9, '10': 'identity'},
    const {'1': 'website', '3': 3, '4': 1, '5': 9, '10': 'website'},
    const {'1': 'details', '3': 4, '4': 1, '5': 9, '10': 'details'},
  ],
};

/// Descriptor for `Description`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List descriptionDescriptor = $convert.base64Decode('CgtEZXNjcmlwdGlvbhIYCgdtb25pa2VyGAEgASgJUgdtb25pa2VyEhoKCGlkZW50aXR5GAIgASgJUghpZGVudGl0eRIYCgd3ZWJzaXRlGAMgASgJUgd3ZWJzaXRlEhgKB2RldGFpbHMYBCABKAlSB2RldGFpbHM=');
@$core.Deprecated('Use commissionDescriptor instead')
const Commission$json = const {
  '1': 'Commission',
  '2': const [
    const {'1': 'rate', '3': 1, '4': 1, '5': 3, '10': 'rate'},
    const {'1': 'max_rate', '3': 2, '4': 1, '5': 3, '10': 'maxRate'},
    const {'1': 'max_change_rate', '3': 3, '4': 1, '5': 3, '10': 'maxChangeRate'},
  ],
};

/// Descriptor for `Commission`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commissionDescriptor = $convert.base64Decode('CgpDb21taXNzaW9uEhIKBHJhdGUYASABKANSBHJhdGUSGQoIbWF4X3JhdGUYAiABKANSB21heFJhdGUSJgoPbWF4X2NoYW5nZV9yYXRlGAMgASgDUg1tYXhDaGFuZ2VSYXRl');
@$core.Deprecated('Use createValidatorDescriptor instead')
const CreateValidator$json = const {
  '1': 'CreateValidator',
  '2': const [
    const {'1': 'description', '3': 1, '4': 1, '5': 11, '6': '.transaction.Description', '10': 'description'},
    const {'1': 'commission', '3': 2, '4': 1, '5': 11, '6': '.transaction.Commission', '10': 'commission'},
    const {'1': 'delegator_address', '3': 3, '4': 1, '5': 12, '10': 'delegatorAddress'},
    const {'1': 'validator_address', '3': 4, '4': 1, '5': 12, '10': 'validatorAddress'},
    const {'1': 'pubkey', '3': 5, '4': 1, '5': 12, '10': 'pubkey'},
    const {'1': 'delegation', '3': 6, '4': 1, '5': 11, '6': '.transaction.Token', '10': 'delegation'},
  ],
};

/// Descriptor for `CreateValidator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createValidatorDescriptor = $convert.base64Decode('Cg9DcmVhdGVWYWxpZGF0b3ISOgoLZGVzY3JpcHRpb24YASABKAsyGC50cmFuc2FjdGlvbi5EZXNjcmlwdGlvblILZGVzY3JpcHRpb24SNwoKY29tbWlzc2lvbhgCIAEoCzIXLnRyYW5zYWN0aW9uLkNvbW1pc3Npb25SCmNvbW1pc3Npb24SKwoRZGVsZWdhdG9yX2FkZHJlc3MYAyABKAxSEGRlbGVnYXRvckFkZHJlc3MSKwoRdmFsaWRhdG9yX2FkZHJlc3MYBCABKAxSEHZhbGlkYXRvckFkZHJlc3MSFgoGcHVia2V5GAUgASgMUgZwdWJrZXkSMgoKZGVsZWdhdGlvbhgGIAEoCzISLnRyYW5zYWN0aW9uLlRva2VuUgpkZWxlZ2F0aW9u');
@$core.Deprecated('Use realCreateValidatorDescriptor instead')
const RealCreateValidator$json = const {
  '1': 'RealCreateValidator',
  '2': const [
    const {'1': 'createValidator', '3': 1, '4': 1, '5': 11, '6': '.transaction.CreateValidator', '10': 'createValidator'},
    const {'1': 'proposal_id', '3': 2, '4': 1, '5': 3, '10': 'proposalId'},
  ],
};

/// Descriptor for `RealCreateValidator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List realCreateValidatorDescriptor = $convert.base64Decode('ChNSZWFsQ3JlYXRlVmFsaWRhdG9yEkYKD2NyZWF0ZVZhbGlkYXRvchgBIAEoCzIcLnRyYW5zYWN0aW9uLkNyZWF0ZVZhbGlkYXRvclIPY3JlYXRlVmFsaWRhdG9yEh8KC3Byb3Bvc2FsX2lkGAIgASgDUgpwcm9wb3NhbElk');
@$core.Deprecated('Use removeValidatorDescriptor instead')
const RemoveValidator$json = const {
  '1': 'RemoveValidator',
  '2': const [
    const {'1': 'launcher_addr', '3': 1, '4': 1, '5': 12, '10': 'launcherAddr'},
    const {'1': 'val_addr', '3': 2, '4': 1, '5': 12, '10': 'valAddr'},
    const {'1': 'val_cons_addr', '3': 3, '4': 1, '5': 12, '10': 'valConsAddr'},
    const {'1': 'proposal_id', '3': 4, '4': 1, '5': 3, '10': 'proposalId'},
  ],
};

/// Descriptor for `RemoveValidator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeValidatorDescriptor = $convert.base64Decode('Cg9SZW1vdmVWYWxpZGF0b3ISIwoNbGF1bmNoZXJfYWRkchgBIAEoDFIMbGF1bmNoZXJBZGRyEhkKCHZhbF9hZGRyGAIgASgMUgd2YWxBZGRyEiIKDXZhbF9jb25zX2FkZHIYAyABKAxSC3ZhbENvbnNBZGRyEh8KC3Byb3Bvc2FsX2lkGAQgASgDUgpwcm9wb3NhbElk');
@$core.Deprecated('Use list_Descriptor instead')
const List_$json = const {
  '1': 'List',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'proposal_id', '3': 2, '4': 1, '5': 3, '10': 'proposalId'},
    const {'1': 'base_asset_symbol', '3': 3, '4': 1, '5': 9, '10': 'baseAssetSymbol'},
    const {'1': 'quote_asset_symbol', '3': 4, '4': 1, '5': 9, '10': 'quoteAssetSymbol'},
    const {'1': 'init_price', '3': 5, '4': 1, '5': 3, '10': 'initPrice'},
  ],
};

/// Descriptor for `List`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List list_Descriptor = $convert.base64Decode('CgRMaXN0EhIKBGZyb20YASABKAxSBGZyb20SHwoLcHJvcG9zYWxfaWQYAiABKANSCnByb3Bvc2FsSWQSKgoRYmFzZV9hc3NldF9zeW1ib2wYAyABKAlSD2Jhc2VBc3NldFN5bWJvbBIsChJxdW90ZV9hc3NldF9zeW1ib2wYBCABKAlSEHF1b3RlQXNzZXRTeW1ib2wSHQoKaW5pdF9wcmljZRgFIAEoA1IJaW5pdFByaWNl');
@$core.Deprecated('Use timeLockDescriptor instead')
const TimeLock$json = const {
  '1': 'TimeLock',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'amount', '3': 3, '4': 3, '5': 11, '6': '.transaction.TimeLock.Token', '10': 'amount'},
    const {'1': 'lock_time', '3': 4, '4': 1, '5': 3, '10': 'lockTime'},
  ],
  '3': const [TimeLock_Token$json],
};

@$core.Deprecated('Use timeLockDescriptor instead')
const TimeLock_Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
  ],
};

/// Descriptor for `TimeLock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeLockDescriptor = $convert.base64Decode('CghUaW1lTG9jaxISCgRmcm9tGAEgASgMUgRmcm9tEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIzCgZhbW91bnQYAyADKAsyGy50cmFuc2FjdGlvbi5UaW1lTG9jay5Ub2tlblIGYW1vdW50EhsKCWxvY2tfdGltZRgEIAEoA1IIbG9ja1RpbWUaNQoFVG9rZW4SFAoFZGVub20YASABKAlSBWRlbm9tEhYKBmFtb3VudBgCIAEoA1IGYW1vdW50');
@$core.Deprecated('Use timeUnlockDescriptor instead')
const TimeUnlock$json = const {
  '1': 'TimeUnlock',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'time_lock_id', '3': 2, '4': 1, '5': 3, '10': 'timeLockId'},
  ],
};

/// Descriptor for `TimeUnlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeUnlockDescriptor = $convert.base64Decode('CgpUaW1lVW5sb2NrEhIKBGZyb20YASABKAxSBGZyb20SIAoMdGltZV9sb2NrX2lkGAIgASgDUgp0aW1lTG9ja0lk');
@$core.Deprecated('Use timeRelockDescriptor instead')
const TimeRelock$json = const {
  '1': 'TimeRelock',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'time_lock_id', '3': 2, '4': 1, '5': 3, '10': 'timeLockId'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'amount', '3': 4, '4': 3, '5': 11, '6': '.transaction.TimeRelock.Token', '10': 'amount'},
    const {'1': 'lock_time', '3': 5, '4': 1, '5': 3, '10': 'lockTime'},
  ],
  '3': const [TimeRelock_Token$json],
};

@$core.Deprecated('Use timeRelockDescriptor instead')
const TimeRelock_Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
  ],
};

/// Descriptor for `TimeRelock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeRelockDescriptor = $convert.base64Decode('CgpUaW1lUmVsb2NrEhIKBGZyb20YASABKAxSBGZyb20SIAoMdGltZV9sb2NrX2lkGAIgASgDUgp0aW1lTG9ja0lkEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhI1CgZhbW91bnQYBCADKAsyHS50cmFuc2FjdGlvbi5UaW1lUmVsb2NrLlRva2VuUgZhbW91bnQSGwoJbG9ja190aW1lGAUgASgDUghsb2NrVGltZRo1CgVUb2tlbhIUCgVkZW5vbRgBIAEoCVIFZGVub20SFgoGYW1vdW50GAIgASgDUgZhbW91bnQ=');
@$core.Deprecated('Use setAccountFlagDescriptor instead')
const SetAccountFlag$json = const {
  '1': 'SetAccountFlag',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'flags', '3': 2, '4': 1, '5': 3, '10': 'flags'},
  ],
};

/// Descriptor for `SetAccountFlag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setAccountFlagDescriptor = $convert.base64Decode('Cg5TZXRBY2NvdW50RmxhZxISCgRmcm9tGAEgASgMUgRmcm9tEhQKBWZsYWdzGAIgASgDUgVmbGFncw==');
@$core.Deprecated('Use hashTimerLockTransferMsgDescriptor instead')
const HashTimerLockTransferMsg$json = const {
  '1': 'HashTimerLockTransferMsg',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'to', '3': 2, '4': 1, '5': 12, '10': 'to'},
    const {'1': 'recipient_other_chain', '3': 3, '4': 1, '5': 9, '10': 'recipientOtherChain'},
    const {'1': 'sender_other_chain', '3': 4, '4': 1, '5': 9, '10': 'senderOtherChain'},
    const {'1': 'random_number_hash', '3': 5, '4': 1, '5': 12, '10': 'randomNumberHash'},
    const {'1': 'timestamp', '3': 6, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'amount', '3': 7, '4': 3, '5': 11, '6': '.transaction.Token', '10': 'amount'},
    const {'1': 'expected_income', '3': 8, '4': 1, '5': 9, '10': 'expectedIncome'},
    const {'1': 'height_span', '3': 9, '4': 1, '5': 3, '10': 'heightSpan'},
    const {'1': 'cross_chain', '3': 10, '4': 1, '5': 8, '10': 'crossChain'},
  ],
};

/// Descriptor for `HashTimerLockTransferMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hashTimerLockTransferMsgDescriptor = $convert.base64Decode('ChhIYXNoVGltZXJMb2NrVHJhbnNmZXJNc2cSEgoEZnJvbRgBIAEoDFIEZnJvbRIOCgJ0bxgCIAEoDFICdG8SMgoVcmVjaXBpZW50X290aGVyX2NoYWluGAMgASgJUhNyZWNpcGllbnRPdGhlckNoYWluEiwKEnNlbmRlcl9vdGhlcl9jaGFpbhgEIAEoCVIQc2VuZGVyT3RoZXJDaGFpbhIsChJyYW5kb21fbnVtYmVyX2hhc2gYBSABKAxSEHJhbmRvbU51bWJlckhhc2gSHAoJdGltZXN0YW1wGAYgASgDUgl0aW1lc3RhbXASKgoGYW1vdW50GAcgAygLMhIudHJhbnNhY3Rpb24uVG9rZW5SBmFtb3VudBInCg9leHBlY3RlZF9pbmNvbWUYCCABKAlSDmV4cGVjdGVkSW5jb21lEh8KC2hlaWdodF9zcGFuGAkgASgDUgpoZWlnaHRTcGFuEh8KC2Nyb3NzX2NoYWluGAogASgIUgpjcm9zc0NoYWlu');
@$core.Deprecated('Use depositHashTimerLockMsgDescriptor instead')
const DepositHashTimerLockMsg$json = const {
  '1': 'DepositHashTimerLockMsg',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'amount', '3': 2, '4': 3, '5': 11, '6': '.transaction.Token', '10': 'amount'},
    const {'1': 'swap_id', '3': 3, '4': 1, '5': 12, '10': 'swapId'},
  ],
};

/// Descriptor for `DepositHashTimerLockMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List depositHashTimerLockMsgDescriptor = $convert.base64Decode('ChdEZXBvc2l0SGFzaFRpbWVyTG9ja01zZxISCgRmcm9tGAEgASgMUgRmcm9tEioKBmFtb3VudBgCIAMoCzISLnRyYW5zYWN0aW9uLlRva2VuUgZhbW91bnQSFwoHc3dhcF9pZBgDIAEoDFIGc3dhcElk');
@$core.Deprecated('Use claimHashTimerLockMsgDescriptor instead')
const ClaimHashTimerLockMsg$json = const {
  '1': 'ClaimHashTimerLockMsg',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'swap_id', '3': 2, '4': 1, '5': 12, '10': 'swapId'},
    const {'1': 'random_number', '3': 3, '4': 1, '5': 12, '10': 'randomNumber'},
  ],
};

/// Descriptor for `ClaimHashTimerLockMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List claimHashTimerLockMsgDescriptor = $convert.base64Decode('ChVDbGFpbUhhc2hUaW1lckxvY2tNc2cSEgoEZnJvbRgBIAEoDFIEZnJvbRIXCgdzd2FwX2lkGAIgASgMUgZzd2FwSWQSIwoNcmFuZG9tX251bWJlchgDIAEoDFIMcmFuZG9tTnVtYmVy');
@$core.Deprecated('Use refundHashTimerLockMsgDescriptor instead')
const RefundHashTimerLockMsg$json = const {
  '1': 'RefundHashTimerLockMsg',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'swap_id', '3': 2, '4': 1, '5': 12, '10': 'swapId'},
  ],
};

/// Descriptor for `RefundHashTimerLockMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refundHashTimerLockMsgDescriptor = $convert.base64Decode('ChZSZWZ1bmRIYXNoVGltZXJMb2NrTXNnEhIKBGZyb20YASABKAxSBGZyb20SFwoHc3dhcF9pZBgCIAEoDFIGc3dhcElk');
@$core.Deprecated('Use tinyTokenIssueDescriptor instead')
const TinyTokenIssue$json = const {
  '1': 'TinyTokenIssue',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'symbol', '3': 3, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'total_supply', '3': 4, '4': 1, '5': 3, '10': 'totalSupply'},
    const {'1': 'mintable', '3': 5, '4': 1, '5': 8, '10': 'mintable'},
    const {'1': 'token_uri', '3': 6, '4': 1, '5': 9, '10': 'tokenUri'},
  ],
};

/// Descriptor for `TinyTokenIssue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tinyTokenIssueDescriptor = $convert.base64Decode('Cg5UaW55VG9rZW5Jc3N1ZRISCgRmcm9tGAEgASgMUgRmcm9tEhIKBG5hbWUYAiABKAlSBG5hbWUSFgoGc3ltYm9sGAMgASgJUgZzeW1ib2wSIQoMdG90YWxfc3VwcGx5GAQgASgDUgt0b3RhbFN1cHBseRIaCghtaW50YWJsZRgFIAEoCFIIbWludGFibGUSGwoJdG9rZW5fdXJpGAYgASgJUgh0b2tlblVyaQ==');
@$core.Deprecated('Use miniTokenIssueDescriptor instead')
const MiniTokenIssue$json = const {
  '1': 'MiniTokenIssue',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'symbol', '3': 3, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'total_supply', '3': 4, '4': 1, '5': 3, '10': 'totalSupply'},
    const {'1': 'mintable', '3': 5, '4': 1, '5': 8, '10': 'mintable'},
    const {'1': 'token_uri', '3': 6, '4': 1, '5': 9, '10': 'tokenUri'},
  ],
};

/// Descriptor for `MiniTokenIssue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List miniTokenIssueDescriptor = $convert.base64Decode('Cg5NaW5pVG9rZW5Jc3N1ZRISCgRmcm9tGAEgASgMUgRmcm9tEhIKBG5hbWUYAiABKAlSBG5hbWUSFgoGc3ltYm9sGAMgASgJUgZzeW1ib2wSIQoMdG90YWxfc3VwcGx5GAQgASgDUgt0b3RhbFN1cHBseRIaCghtaW50YWJsZRgFIAEoCFIIbWludGFibGUSGwoJdG9rZW5fdXJpGAYgASgJUgh0b2tlblVyaQ==');
@$core.Deprecated('Use miniTokenSetURIDescriptor instead')
const MiniTokenSetURI$json = const {
  '1': 'MiniTokenSetURI',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'token_uri', '3': 3, '4': 1, '5': 9, '10': 'tokenUri'},
  ],
};

/// Descriptor for `MiniTokenSetURI`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List miniTokenSetURIDescriptor = $convert.base64Decode('Cg9NaW5pVG9rZW5TZXRVUkkSEgoEZnJvbRgBIAEoDFIEZnJvbRIWCgZzeW1ib2wYAiABKAlSBnN5bWJvbBIbCgl0b2tlbl91cmkYAyABKAlSCHRva2VuVXJp');
@$core.Deprecated('Use miniTokenListDescriptor instead')
const MiniTokenList$json = const {
  '1': 'MiniTokenList',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'base_asset_symbol', '3': 2, '4': 1, '5': 9, '10': 'baseAssetSymbol'},
    const {'1': 'quote_asset_symbol', '3': 3, '4': 1, '5': 9, '10': 'quoteAssetSymbol'},
    const {'1': 'init_price', '3': 4, '4': 1, '5': 3, '10': 'initPrice'},
  ],
};

/// Descriptor for `MiniTokenList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List miniTokenListDescriptor = $convert.base64Decode('Cg1NaW5pVG9rZW5MaXN0EhIKBGZyb20YASABKAxSBGZyb20SKgoRYmFzZV9hc3NldF9zeW1ib2wYAiABKAlSD2Jhc2VBc3NldFN5bWJvbBIsChJxdW90ZV9hc3NldF9zeW1ib2wYAyABKAlSEHF1b3RlQXNzZXRTeW1ib2wSHQoKaW5pdF9wcmljZRgEIAEoA1IJaW5pdFByaWNl');
