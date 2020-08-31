///
//  Generated code. Do not modify.
//  source: block.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const PartSetHeader$json = const {
  '1': 'PartSetHeader',
  '2': const [
    const {'1': 'Total', '3': 1, '4': 1, '5': 5, '10': 'Total'},
    const {'1': 'Hash', '3': 2, '4': 1, '5': 12, '10': 'Hash'},
  ],
};

const BlockID$json = const {
  '1': 'BlockID',
  '2': const [
    const {'1': 'Hash', '3': 1, '4': 1, '5': 12, '10': 'Hash'},
    const {'1': 'PartsHeader', '3': 2, '4': 1, '5': 11, '6': '.proto3.PartSetHeader', '10': 'PartsHeader'},
  ],
};

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

const Version$json = const {
  '1': 'Version',
  '2': const [
    const {'1': 'Block', '3': 1, '4': 1, '5': 4, '10': 'Block'},
    const {'1': 'App', '3': 2, '4': 1, '5': 4, '10': 'App'},
  ],
};

const Timestamp$json = const {
  '1': 'Timestamp',
  '2': const [
    const {'1': 'seconds', '3': 1, '4': 1, '5': 3, '10': 'seconds'},
    const {'1': 'nanos', '3': 2, '4': 1, '5': 5, '10': 'nanos'},
  ],
};

