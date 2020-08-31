///
//  Generated code. Do not modify.
//  source: types.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'tendermint_types.pbjson.dart' as $2;
import 'merkle.pbjson.dart' as $1;
import 'google_timestamp.pbjson.dart' as $0;

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

const RequestEcho$json = const {
  '1': 'RequestEcho',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

const RequestFlush$json = const {
  '1': 'RequestFlush',
};

const RequestInfo$json = const {
  '1': 'RequestInfo',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'block_version', '3': 2, '4': 1, '5': 4, '10': 'blockVersion'},
    const {'1': 'p2p_version', '3': 3, '4': 1, '5': 4, '10': 'p2pVersion'},
  ],
};

const RequestSetOption$json = const {
  '1': 'RequestSetOption',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

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

const RequestQuery$json = const {
  '1': 'RequestQuery',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'height', '3': 3, '4': 1, '5': 3, '10': 'height'},
    const {'1': 'prove', '3': 4, '4': 1, '5': 8, '10': 'prove'},
  ],
};

const RequestBeginBlock$json = const {
  '1': 'RequestBeginBlock',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
    const {'1': 'header', '3': 2, '4': 1, '5': 11, '6': '.types.Header', '8': const {}, '10': 'header'},
    const {'1': 'last_commit_info', '3': 3, '4': 1, '5': 11, '6': '.types.LastCommitInfo', '8': const {}, '10': 'lastCommitInfo'},
    const {'1': 'byzantine_validators', '3': 4, '4': 3, '5': 11, '6': '.types.Evidence', '8': const {}, '10': 'byzantineValidators'},
  ],
};

const RequestCheckTx$json = const {
  '1': 'RequestCheckTx',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 1, '5': 12, '10': 'tx'},
  ],
};

const RequestDeliverTx$json = const {
  '1': 'RequestDeliverTx',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 1, '5': 12, '10': 'tx'},
  ],
};

const RequestEndBlock$json = const {
  '1': 'RequestEndBlock',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 3, '10': 'height'},
  ],
};

const RequestCommit$json = const {
  '1': 'RequestCommit',
};

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

const ResponseException$json = const {
  '1': 'ResponseException',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 9, '10': 'error'},
  ],
};

const ResponseEcho$json = const {
  '1': 'ResponseEcho',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

const ResponseFlush$json = const {
  '1': 'ResponseFlush',
};

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

const ResponseSetOption$json = const {
  '1': 'ResponseSetOption',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 13, '10': 'code'},
    const {'1': 'log', '3': 3, '4': 1, '5': 9, '10': 'log'},
    const {'1': 'info', '3': 4, '4': 1, '5': 9, '10': 'info'},
  ],
};

const ResponseInitChain$json = const {
  '1': 'ResponseInitChain',
  '2': const [
    const {'1': 'consensus_params', '3': 1, '4': 1, '5': 11, '6': '.types.ConsensusParams', '10': 'consensusParams'},
    const {'1': 'validators', '3': 2, '4': 3, '5': 11, '6': '.types.ValidatorUpdate', '8': const {}, '10': 'validators'},
  ],
};

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

const ResponseBeginBlock$json = const {
  '1': 'ResponseBeginBlock',
  '2': const [
    const {'1': 'tags', '3': 1, '4': 3, '5': 11, '6': '.common.KVPair', '8': const {}, '10': 'tags'},
  ],
};

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

const ResponseEndBlock$json = const {
  '1': 'ResponseEndBlock',
  '2': const [
    const {'1': 'validator_updates', '3': 1, '4': 3, '5': 11, '6': '.types.ValidatorUpdate', '8': const {}, '10': 'validatorUpdates'},
    const {'1': 'consensus_param_updates', '3': 2, '4': 1, '5': 11, '6': '.types.ConsensusParams', '10': 'consensusParamUpdates'},
    const {'1': 'tags', '3': 3, '4': 3, '5': 11, '6': '.common.KVPair', '8': const {}, '10': 'tags'},
  ],
};

const ResponseCommit$json = const {
  '1': 'ResponseCommit',
  '2': const [
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
  ],
};

const ConsensusParams$json = const {
  '1': 'ConsensusParams',
  '2': const [
    const {'1': 'block_size', '3': 1, '4': 1, '5': 11, '6': '.types.BlockSizeParams', '10': 'blockSize'},
    const {'1': 'evidence', '3': 2, '4': 1, '5': 11, '6': '.types.EvidenceParams', '10': 'evidence'},
    const {'1': 'validator', '3': 3, '4': 1, '5': 11, '6': '.types.ValidatorParams', '10': 'validator'},
  ],
};

const BlockSizeParams$json = const {
  '1': 'BlockSizeParams',
  '2': const [
    const {'1': 'max_bytes', '3': 1, '4': 1, '5': 3, '10': 'maxBytes'},
    const {'1': 'max_gas', '3': 2, '4': 1, '5': 3, '10': 'maxGas'},
  ],
};

const EvidenceParams$json = const {
  '1': 'EvidenceParams',
  '2': const [
    const {'1': 'max_age', '3': 1, '4': 1, '5': 3, '10': 'maxAge'},
  ],
};

const ValidatorParams$json = const {
  '1': 'ValidatorParams',
  '2': const [
    const {'1': 'pub_key_types', '3': 1, '4': 3, '5': 9, '10': 'pubKeyTypes'},
  ],
};

const LastCommitInfo$json = const {
  '1': 'LastCommitInfo',
  '2': const [
    const {'1': 'round', '3': 1, '4': 1, '5': 5, '10': 'round'},
    const {'1': 'votes', '3': 2, '4': 3, '5': 11, '6': '.types.VoteInfo', '8': const {}, '10': 'votes'},
  ],
};

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

const Version$json = const {
  '1': 'Version',
  '2': const [
    const {'1': 'Block', '3': 1, '4': 1, '5': 4, '10': 'Block'},
    const {'1': 'App', '3': 2, '4': 1, '5': 4, '10': 'App'},
  ],
};

const BlockID$json = const {
  '1': 'BlockID',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
    const {'1': 'parts_header', '3': 2, '4': 1, '5': 11, '6': '.types.PartSetHeader', '8': const {}, '10': 'partsHeader'},
  ],
};

const PartSetHeader$json = const {
  '1': 'PartSetHeader',
  '2': const [
    const {'1': 'total', '3': 1, '4': 1, '5': 5, '10': 'total'},
    const {'1': 'hash', '3': 2, '4': 1, '5': 12, '10': 'hash'},
  ],
};

const Validator$json = const {
  '1': 'Validator',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    const {'1': 'power', '3': 3, '4': 1, '5': 3, '10': 'power'},
  ],
};

const ValidatorUpdate$json = const {
  '1': 'ValidatorUpdate',
  '2': const [
    const {'1': 'pub_key', '3': 1, '4': 1, '5': 11, '6': '.types.PubKey', '8': const {}, '10': 'pubKey'},
    const {'1': 'power', '3': 2, '4': 1, '5': 3, '10': 'power'},
  ],
};

const VoteInfo$json = const {
  '1': 'VoteInfo',
  '2': const [
    const {'1': 'validator', '3': 1, '4': 1, '5': 11, '6': '.types.Validator', '8': const {}, '10': 'validator'},
    const {'1': 'signed_last_block', '3': 2, '4': 1, '5': 8, '10': 'signedLastBlock'},
  ],
};

const PubKey$json = const {
  '1': 'PubKey',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
  ],
};

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

const ABCIApplicationServiceBase$json = const {
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

const ABCIApplicationServiceBase$messageJson = const {
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

