///
//  Generated code. Do not modify.
//  source: dex.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

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

const StdSignature_PubKey$json = const {
  '1': 'PubKey',
};

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

const CancelOrder$json = const {
  '1': 'CancelOrder',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 12, '10': 'sender'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'refid', '3': 3, '4': 1, '5': 9, '10': 'refid'},
  ],
};

const TokenFreeze$json = const {
  '1': 'TokenFreeze',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
  ],
};

const TokenUnfreeze$json = const {
  '1': 'TokenUnfreeze',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
  ],
};

const Send$json = const {
  '1': 'Send',
  '2': const [
    const {'1': 'inputs', '3': 1, '4': 3, '5': 11, '6': '.transaction.Send.Input', '10': 'inputs'},
    const {'1': 'outputs', '3': 2, '4': 3, '5': 11, '6': '.transaction.Send.Output', '10': 'outputs'},
  ],
  '3': const [Send_Token$json, Send_Input$json, Send_Output$json],
};

const Send_Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
  ],
};

const Send_Input$json = const {
  '1': 'Input',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    const {'1': 'coins', '3': 2, '4': 3, '5': 11, '6': '.transaction.Send.Token', '10': 'coins'},
  ],
};

const Send_Output$json = const {
  '1': 'Output',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    const {'1': 'coins', '3': 2, '4': 3, '5': 11, '6': '.transaction.Send.Token', '10': 'coins'},
  ],
};

const Vote$json = const {
  '1': 'Vote',
  '2': const [
    const {'1': 'proposal_id', '3': 1, '4': 1, '5': 3, '10': 'proposalId'},
    const {'1': 'voter', '3': 2, '4': 1, '5': 12, '10': 'voter'},
    const {'1': 'option', '3': 3, '4': 1, '5': 3, '10': 'option'},
  ],
};

const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
  ],
};

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

const DexFeeParam$json = const {
  '1': 'DexFeeParam',
  '2': const [
    const {'1': 'dex_fee_fields', '3': 1, '4': 3, '5': 11, '6': '.transaction.DexFeeParam.DexFeeField', '10': 'dexFeeFields'},
  ],
  '3': const [DexFeeParam_DexFeeField$json],
};

const DexFeeParam_DexFeeField$json = const {
  '1': 'DexFeeField',
  '2': const [
    const {'1': 'fee_name', '3': 1, '4': 1, '5': 9, '10': 'feeName'},
    const {'1': 'fee_value', '3': 2, '4': 1, '5': 3, '10': 'feeValue'},
  ],
};

const FixedFeeParams$json = const {
  '1': 'FixedFeeParams',
  '2': const [
    const {'1': 'msg_type', '3': 1, '4': 1, '5': 9, '10': 'msgType'},
    const {'1': 'fee', '3': 2, '4': 1, '5': 3, '10': 'fee'},
    const {'1': 'fee_for', '3': 3, '4': 1, '5': 5, '10': 'feeFor'},
  ],
};

const TransferFeeParam$json = const {
  '1': 'TransferFeeParam',
  '2': const [
    const {'1': 'fixed_fee_params', '3': 1, '4': 1, '5': 11, '6': '.transaction.FixedFeeParams', '10': 'fixedFeeParams'},
    const {'1': 'multi_transfer_fee', '3': 2, '4': 1, '5': 3, '10': 'multiTransferFee'},
    const {'1': 'lower_limit_as_multi', '3': 3, '4': 1, '5': 3, '10': 'lowerLimitAsMulti'},
  ],
};

const ResultBroadcastTx$json = const {
  '1': 'ResultBroadcastTx',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'log', '3': 3, '4': 1, '5': 9, '10': 'log'},
    const {'1': 'hash', '3': 4, '4': 1, '5': 12, '10': 'hash'},
  ],
};

const ResultBroadcastTxCommit$json = const {
  '1': 'ResultBroadcastTxCommit',
  '2': const [
    const {'1': 'check_tx', '3': 1, '4': 1, '5': 11, '6': '.types.ResponseCheckTx', '10': 'checkTx'},
    const {'1': 'deliver_tx', '3': 2, '4': 1, '5': 11, '6': '.types.ResponseDeliverTx', '10': 'deliverTx'},
    const {'1': 'hash', '3': 3, '4': 1, '5': 12, '10': 'hash'},
    const {'1': 'height', '3': 4, '4': 1, '5': 3, '10': 'height'},
  ],
};

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

const Burn$json = const {
  '1': 'Burn',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
  ],
};

const Mint$json = const {
  '1': 'Mint',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
  ],
};

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

const Deposit$json = const {
  '1': 'Deposit',
  '2': const [
    const {'1': 'proposal_id', '3': 1, '4': 1, '5': 3, '10': 'proposalId'},
    const {'1': 'depositer', '3': 2, '4': 1, '5': 12, '10': 'depositer'},
    const {'1': 'amount', '3': 3, '4': 3, '5': 11, '6': '.transaction.Token', '10': 'amount'},
  ],
};

const Description$json = const {
  '1': 'Description',
  '2': const [
    const {'1': 'moniker', '3': 1, '4': 1, '5': 9, '10': 'moniker'},
    const {'1': 'identity', '3': 2, '4': 1, '5': 9, '10': 'identity'},
    const {'1': 'website', '3': 3, '4': 1, '5': 9, '10': 'website'},
    const {'1': 'details', '3': 4, '4': 1, '5': 9, '10': 'details'},
  ],
};

const Commission$json = const {
  '1': 'Commission',
  '2': const [
    const {'1': 'rate', '3': 1, '4': 1, '5': 3, '10': 'rate'},
    const {'1': 'max_rate', '3': 2, '4': 1, '5': 3, '10': 'maxRate'},
    const {'1': 'max_change_rate', '3': 3, '4': 1, '5': 3, '10': 'maxChangeRate'},
  ],
};

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

const RealCreateValidator$json = const {
  '1': 'RealCreateValidator',
  '2': const [
    const {'1': 'createValidator', '3': 1, '4': 1, '5': 11, '6': '.transaction.CreateValidator', '10': 'createValidator'},
    const {'1': 'proposal_id', '3': 2, '4': 1, '5': 3, '10': 'proposalId'},
  ],
};

const RemoveValidator$json = const {
  '1': 'RemoveValidator',
  '2': const [
    const {'1': 'launcher_addr', '3': 1, '4': 1, '5': 12, '10': 'launcherAddr'},
    const {'1': 'val_addr', '3': 2, '4': 1, '5': 12, '10': 'valAddr'},
    const {'1': 'val_cons_addr', '3': 3, '4': 1, '5': 12, '10': 'valConsAddr'},
    const {'1': 'proposal_id', '3': 4, '4': 1, '5': 3, '10': 'proposalId'},
  ],
};

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

const TimeLock_Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
  ],
};

const TimeUnlock$json = const {
  '1': 'TimeUnlock',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'time_lock_id', '3': 2, '4': 1, '5': 3, '10': 'timeLockId'},
  ],
};

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

const TimeRelock_Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
  ],
};

const SetAccountFlag$json = const {
  '1': 'SetAccountFlag',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'flags', '3': 2, '4': 1, '5': 3, '10': 'flags'},
  ],
};

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

const DepositHashTimerLockMsg$json = const {
  '1': 'DepositHashTimerLockMsg',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'amount', '3': 2, '4': 3, '5': 11, '6': '.transaction.Token', '10': 'amount'},
    const {'1': 'swap_id', '3': 3, '4': 1, '5': 12, '10': 'swapId'},
  ],
};

const ClaimHashTimerLockMsg$json = const {
  '1': 'ClaimHashTimerLockMsg',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'swap_id', '3': 2, '4': 1, '5': 12, '10': 'swapId'},
    const {'1': 'random_number', '3': 3, '4': 1, '5': 12, '10': 'randomNumber'},
  ],
};

const RefundHashTimerLockMsg$json = const {
  '1': 'RefundHashTimerLockMsg',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'swap_id', '3': 2, '4': 1, '5': 12, '10': 'swapId'},
  ],
};

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

const MiniTokenSetURI$json = const {
  '1': 'MiniTokenSetURI',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'token_uri', '3': 3, '4': 1, '5': 9, '10': 'tokenUri'},
  ],
};

const MiniTokenList$json = const {
  '1': 'MiniTokenList',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'base_asset_symbol', '3': 2, '4': 1, '5': 9, '10': 'baseAssetSymbol'},
    const {'1': 'quote_asset_symbol', '3': 3, '4': 1, '5': 9, '10': 'quoteAssetSymbol'},
    const {'1': 'init_price', '3': 4, '4': 1, '5': 3, '10': 'initPrice'},
  ],
};

