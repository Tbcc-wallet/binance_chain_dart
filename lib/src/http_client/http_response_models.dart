/// Read more: [HTTP API ``Error`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#error)
class Error {
  int code;
  String message;

  Error({this.code, this.message});
}

/// Read more: [HTTP API ``Times`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#times)
class Times {
  String ap_time;
  String block_time;

  Times({this.ap_time, this.block_time});

  Times.fromJson(var json) {
    ap_time = json['ap_time'];
    block_time = json['block_time'];
  }
}

/// Read more: [HTTP API ``Validator`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#validator)
class Validators {
  int blockHeight;
  List<Validator> validators;

  Validators({this.blockHeight, this.validators});

  Validators.fromJson(var json) {
    blockHeight = json['block_height'];
    if (json['validators' != null]) {
      validators = [for (var validatorInfo in json['validators']) Validator.fromJson(validatorInfo)];
    }
  }
}

/// Read more: [HTTP API ``Validators`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#validators)
class Validator {
  String address;
  List<int> pub_key;
  int voting_power;
  int accum;

  Validator({this.address, this.pub_key, this.voting_power, this.accum});

  Validator.fromJson(var json) {
    address = json['address'];
    pub_key = json['pub_key'].cast<int>();
    voting_power = json['voting_power'];
    accum = json[accum];
  }
}

/// Read more: [HTTP API ``Peer`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#peer)
class Peer {
  bool accelerated;
  String accessAddr;
  List<String> capabilities;
  String id;
  String listenAddr;
  String moniker;
  String network;
  String originalListenAddr;
  String streamAddr;
  String version;

  Peer({this.accelerated, this.accessAddr, this.capabilities, this.id, this.listenAddr, this.moniker, this.network, this.originalListenAddr, this.streamAddr, this.version});

  Peer.fromJson(Map<String, dynamic> json) {
    accelerated = json['accelerated'];
    accessAddr = json['access_addr'];
    capabilities = json['capabilities'].cast<String>();
    id = json['id'];
    listenAddr = json['listen_addr'];
    moniker = json['moniker'];
    network = json['network'];
    originalListenAddr = json['original_listen_addr'];
    streamAddr = json['stream_addr'];
    version = json['version'];
  }
}

/// Read more: [HTTP API ``Transaction`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#transaction)
class Transaction {
  String hash;
  String log;
  dynamic data;
  String height;
  int code;
  bool ok;
  dynamic tx;

  Transaction({this.hash, this.log, this.data, this.height, this.code, this.ok});

  Transaction.fromJson(Map<String, dynamic> json) {
    hash = json['hash'];
    log = json['log'];
    data = json['data'];
    height = json['height'];
    code = json['code'];
    ok = json['ok'];
    tx = json['tx'];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'hash': hash, 'log': log, 'data': data, 'height': height, 'code': code, 'ok': ok, 'tx': tx};
  }
}

/// Read more: [HTTP API ``Account`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#account)
class Account {
  int accountNumber;
  String address;
  List<Balance> balances;
  int flags;
  List<int> publicKey;
  int sequence;

  Account({this.accountNumber, this.address, this.balances, this.flags, this.publicKey, this.sequence});

  Account.fromJson(Map<String, dynamic> json) {
    accountNumber = json['account_number'];
    address = json['address'];
    if (json['balances'] != null) {
      balances = <Balance>[];
      json['balances'].forEach((v) {
        balances.add(Balance.fromJson(v));
      });
    }
    flags = json['flags'];
    publicKey = json['public_key']?.cast<int>();
    sequence = json['sequence'];
  }
}

/// Read more: [HTTP API ``AccountSequence`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#accountsequence)
class AccountSequence {
  int sequence;

  AccountSequence({this.sequence});

  AccountSequence.fromJson(Map<String, dynamic> json) {
    sequence = json['sequence'];
  }
}

/// Read more: [HTTP API ``Balance`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#balance)
class Balance {
  String free;
  String frozen;
  String locked;
  String symbol;

  Balance({this.free, this.frozen, this.locked, this.symbol});

  Balance.fromJson(Map<String, dynamic> json) {
    free = json['free'];
    frozen = json['frozen'];
    locked = json['locked'];
    symbol = json['symbol'];
  }
}

/// Read more: [HTTP API ``Token`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#token)
class Token {
  bool mintable;
  String name;
  String originalSymbol;
  String owner;
  String symbol;
  String totalSupply;

  Token({this.mintable, this.name, this.originalSymbol, this.owner, this.symbol, this.totalSupply});

  Token.fromJson(Map<String, dynamic> json) {
    mintable = json['mintable'];
    name = json['name'];
    originalSymbol = json['original_symbol'];
    owner = json['owner'];
    symbol = json['symbol'];
    totalSupply = json['total_supply'];
  }
}

/// Read more: [HTTP API ``Market`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#market)
class Market {
  String baseAssetSymbol;
  String listPrice;
  String lotSize;
  String quoteAssetSymbol;
  String tickSize;

  Market({this.baseAssetSymbol, this.listPrice, this.lotSize, this.quoteAssetSymbol, this.tickSize});

  Market.fromJson(Map<String, dynamic> json) {
    baseAssetSymbol = json['base_asset_symbol'];
    listPrice = json['list_price'];
    lotSize = json['lot_size'];
    quoteAssetSymbol = json['quote_asset_symbol'];
    tickSize = json['tick_size'];
  }
}

/// Read more: [HTTP API ``Fee`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#fee)
class Fee {
  String msgType;
  int fee;
  int feeFor;
  String multiTransferFee;
  String lowerLimitAsMulti;
  FixedFeeParams_ fixedFeeParams;
  DexFeeFieldParams dexFeeFields;

  Fee({this.msgType, this.fee, this.feeFor});

  Fee.fromJson(Map<String, dynamic> json) {
    msgType = json['msg_type'];
    fee = json['fee'];
    feeFor = json['fee_for'];
    fixedFeeParams = json['fixed_fee_params'];
    dexFeeFields = json['dex_fee_fields'];
  }
}

/// Read more: [HTTP API ``FixedFeeParams`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#fixedfeeparams)
class FixedFeeParams_ {
  String msgType;
  int fee;
  int feeFor;

  FixedFeeParams_.fromJson(Map<String, dynamic> json) {
    msgType = json['msg_type'];
    fee = json['fee'];
    feeFor = json['fee_for'];
  }
}

/// Read more: [HTTP API ``DexFeeFieldParams`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#dexfeefieldparams)
class DexFeeFieldParams {
  String feeName;
  int feeValue;
  DexFeeFieldParams.fromJson(Map<String, dynamic> json) {
    feeName = json['fee_name'];
    feeValue = json['fee_value'];
  }
}

/// Read more: [HTTP API ``MarketDepth`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#marketdepth)
class MarketDepth {
  List<List<double>> bids;
  List<List<double>> asks;
  int height;
  bool pendingMatch;

  MarketDepth({this.bids, this.asks, this.height, this.pendingMatch});

  MarketDepth.fromJson(Map<String, dynamic> json) {
    bids = List<List<double>>.from(json['bids']?.map((element) => List<double>.from(element.map((element_) => double.parse(element_))?.toList())));
    asks = List<List<double>>.from(json['asks']?.map((element) => List<double>.from(element.map((element_) => double.parse(element_))?.toList())));
    height = json['height'];
    pendingMatch = json['pending_match'];
  }
}

/// Read more: [HTTP API ``Candlestick`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#candlestick)
class Candlestick {
  int openTime;
  double open;
  double high;
  double low;
  double close;
  double volume;
  int closeTime;
  double quoteAssetVolume;
  int numberOfTrades;

  Candlestick({this.openTime, this.open, this.high, this.low, this.close, this.volume, this.closeTime, this.quoteAssetVolume, this.numberOfTrades});

  Candlestick.fromJson(List data) {
    openTime = data[0];
    open = double.parse(data[1]);
    high = double.parse(data[2]);
    low = double.parse(data[3]);
    close = double.parse(data[4]);
    volume = double.parse(data[5]);
    closeTime = data[6];
    quoteAssetVolume = double.parse(data[7]);
    numberOfTrades = data[8];
  }
}

/// Read more: [HTTP API ``OrderList`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#orderlist)
class OrderList {
  List<Order> order;
  int total;

  OrderList({this.order, this.total});

  OrderList.fromJson(Map<String, dynamic> json) {
    if (json['order'] != null) {
      order = <Order>[];
      json['order'].forEach((v) {
        order.add(Order.fromJson(v));
      });
    }
    total = json['total'];
  }
}

/// Read more: [HTTP API ``Order`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#order)
class Order {
  String orderId;
  String symbol;
  String owner;
  String price;
  String quantity;
  String cumulateQuantity;
  String fee;
  String orderCreateTime;
  String transactionTime;
  String status;
  int timeInForce;
  int side;
  int type;
  String tradeId;
  String lastExecutedPrice;
  String lastExecutedQuantity;
  String transactionHash;

  Order({this.orderId, this.symbol, this.owner, this.price, this.quantity, this.cumulateQuantity, this.fee, this.orderCreateTime, this.transactionTime, this.status, this.timeInForce, this.side, this.type, this.tradeId, this.lastExecutedPrice, this.lastExecutedQuantity, this.transactionHash});

  Order.fromJson(Map<String, dynamic> json) {
    orderId = json['orderId'];
    symbol = json['symbol'];
    owner = json['owner'];
    price = json['price'];
    quantity = json['quantity'];
    cumulateQuantity = json['cumulateQuantity'];
    fee = json['fee'];
    orderCreateTime = json['orderCreateTime'];
    transactionTime = json['transactionTime'];
    status = json['status'];
    timeInForce = json['timeInForce'];
    side = json['side'];
    type = json['type'];
    tradeId = json['tradeId'];
    lastExecutedPrice = json['lastExecutedPrice'];
    lastExecutedQuantity = json['lastExecutedQuantity'];
    transactionHash = json['transactionHash'];
  }
}

/// Read more: [HTTP API ``SubTx`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#subtx)
class SubTx {
  int blockHeight;
  String fromAddr;
  String toAddr;
  String txAsset;
  String txFee;
  String txHash;
  String txType;
  String value;

  SubTx({this.blockHeight, this.fromAddr, this.toAddr, this.txAsset, this.txFee, this.txHash, this.txType, this.value});

  SubTx.fromJson(Map<String, dynamic> json) {
    blockHeight = json['blockHeight'];
    fromAddr = json['fromAddr'];
    toAddr = json['toAddr'];
    txAsset = json['txAsset'];
    txFee = json['txFee'];
    txHash = json['txHash'];
    txType = json['txType'];
    value = json['value'];
  }
}

/// Read more: [HTTP API ``TickerStatistics`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#tickerstatistics)
class TickerStatistics {
  String symbol;
  String baseAssetName;
  String quoteAssetName;
  String priceChange;
  String priceChangePercent;
  String prevClosePrice;
  String lastPrice;
  String lastQuantity;
  String openPrice;
  String highPrice;
  String lowPrice;
  int openTime;
  int closeTime;
  String firstId;
  String lastId;
  String bidPrice;
  String bidQuantity;
  String askPrice;
  String askQuantity;
  String weightedAvgPrice;
  String volume;
  String quoteVolume;
  int count;

  TickerStatistics(
      {this.symbol,
      this.baseAssetName,
      this.quoteAssetName,
      this.priceChange,
      this.priceChangePercent,
      this.prevClosePrice,
      this.lastPrice,
      this.lastQuantity,
      this.openPrice,
      this.highPrice,
      this.lowPrice,
      this.openTime,
      this.closeTime,
      this.firstId,
      this.lastId,
      this.bidPrice,
      this.bidQuantity,
      this.askPrice,
      this.askQuantity,
      this.weightedAvgPrice,
      this.volume,
      this.quoteVolume,
      this.count});

  TickerStatistics.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'] ?? '0.0';
    baseAssetName = json['baseAssetName'] ?? '0.0';
    quoteAssetName = json['quoteAssetName'] ?? '0.0';
    priceChange = json['priceChange'] ?? '0.0';
    priceChangePercent = json['priceChangePercent'] ?? '0.0';
    prevClosePrice = json['prevClosePrice'] ?? '0.0';
    lastPrice = json['lastPrice'] ?? '0.0';
    lastQuantity = json['lastQuantity'] ?? '0.0';
    openPrice = json['openPrice'] ?? '0.0';
    highPrice = json['highPrice'] ?? '0.0';
    lowPrice = json['lowPrice'] ?? '0.0';
    openTime = json['openTime'] ?? 0;
    closeTime = json['closeTime'] ?? 0;
    firstId = json['firstId'] ?? '0.0';
    lastId = json['lastId'] ?? '0.0';
    bidPrice = json['bidPrice'] ?? '0.0';
    bidQuantity = json['bidQuantity'] ?? '0.0';
    askPrice = json['askPrice'] ?? '0.0';
    askQuantity = json['askQuantity'] ?? '0.0';
    weightedAvgPrice = json['weightedAvgPrice'] ?? '0.0';
    volume = json['volume'] ?? '0.0';
    quoteVolume = json['quoteVolume'] ?? '0.0';
    count = json['count'] ?? 0;
  }

  TickerStatistics.zero(String symbol) {
    symbol = symbol;
    baseAssetName = '0.0';
    quoteAssetName = '0.0';
    priceChange = '0.0';
    priceChangePercent = '0.0';
    prevClosePrice = '0.0';
    lastPrice = '0.0';
    lastQuantity = '0.0';
    openPrice = '0.0';
    highPrice = '0.0';
    lowPrice = '0.0';
    openTime = 0;
    closeTime = 0;
    firstId = '0.0';
    lastId = '0.0';
    bidPrice = '0.0';
    bidQuantity = '0.0';
    askPrice = '0.0';
    askQuantity = '0.0';
    weightedAvgPrice = '0.0';
    volume = '0.0';
    quoteVolume = '0.0';
    count = 0;
  }
  TickerStatistics.stable(String symbol) {
    symbol = symbol;
    baseAssetName = '0.0';
    quoteAssetName = '0.0';
    priceChange = '0.0';
    priceChangePercent = '0.0';
    prevClosePrice = '0.0';
    lastPrice = '1.0';
    lastQuantity = '0.0';
    openPrice = '0.0';
    highPrice = '0.0';
    lowPrice = '0.0';
    openTime = 0;
    closeTime = 0;
    firstId = '0.0';
    lastId = '0.0';
    bidPrice = '0.0';
    bidQuantity = '0.0';
    askPrice = '0.0';
    askQuantity = '0.0';
    weightedAvgPrice = '0.0';
    volume = '0.0';
    quoteVolume = '0.0';
    count = 0;
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'symbol': symbol ?? '0.0',
      'baseAssetName': baseAssetName ?? '0.0',
      'quoteAssetName': quoteAssetName ?? '0.0',
      'priceChange': priceChange ?? '0.0',
      'priceChangePercent': priceChangePercent ?? '0.0',
      'prevClosePrice': prevClosePrice ?? '0.0',
      'lastPrice': lastPrice ?? '0.0',
      'lastQuantity': lastQuantity ?? '0.0',
      'openPrice': openPrice ?? '0.0',
      'highPrice': highPrice ?? '0.0',
      'lowPrice': lowPrice ?? '0.0',
      'openTime': openTime ?? 0,
      'closeTime': closeTime ?? 0,
      'firstId': firstId ?? '0.0',
      'lastId': lastId ?? '0.0',
      'bidPrice': bidPrice ?? '0.0',
      'bidQuantity': bidQuantity ?? '0.0',
      'askPrice': askPrice ?? '0.0',
      'askQuantity': askQuantity ?? '0.0',
      'weightedAvgPrice': weightedAvgPrice ?? '0.0',
      'volume': volume ?? '0.0',
      'quoteVolume': quoteVolume ?? '0.0',
      'count': count ?? 0,
    };
  }
}

class TradePage {
  List<Trade> trade;
  int total;

  TradePage({this.trade, this.total});

  TradePage.fromJson(Map<String, dynamic> json) {
    if (json['trade'] != null) {
      trade = <Trade>[];
      json['trade'].forEach((v) {
        trade.add(Trade.fromJson(v));
      });
    }
    total = json['total'];
  }
}

class Trade {
  String tradeId;
  int blockHeight;
  String symbol;
  String price;
  String quantity;
  String buyerOrderId;
  String sellerOrderId;
  int buyerSource;
  int sellerSource;
  String buyerId;
  String sellerId;
  String buyFee;
  String sellFee;
  String baseAsset;
  String quoteAsset;
  String buySingleFee;
  String sellSingleFee;
  String tickType;
  int time;

  Trade(
      {this.tradeId,
      this.blockHeight,
      this.symbol,
      this.price,
      this.quantity,
      this.buyerOrderId,
      this.sellerOrderId,
      this.buyerSource,
      this.sellerSource,
      this.buyerId,
      this.sellerId,
      this.buyFee,
      this.sellFee,
      this.baseAsset,
      this.quoteAsset,
      this.buySingleFee,
      this.sellSingleFee,
      this.tickType,
      this.time});

  Trade.fromJson(Map<String, dynamic> json) {
    tradeId = json['tradeId'];
    blockHeight = json['blockHeight'];
    symbol = json['symbol'];
    price = json['price'];
    quantity = json['quantity'];
    buyerOrderId = json['buyerOrderId'];
    sellerOrderId = json['sellerOrderId'];
    buyerSource = json['buyerSource'];
    sellerSource = json['sellerSource'];
    buyerId = json['buyerId'];
    sellerId = json['sellerId'];
    buyFee = json['buyFee'];
    sellFee = json['sellFee'];
    baseAsset = json['baseAsset'];
    quoteAsset = json['quoteAsset'];
    buySingleFee = json['buySingleFee'];
    sellSingleFee = json['sellSingleFee'];
    tickType = json['tickType'];
    time = json['time'];
  }
}

/// Read more: [HTTP API ``BlockExchangeFeePage`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#blockexchangefeepage)
class BlockExchangeFeePage {
  List<BlockExchangeFee> blockExchangeFee;
  int total;

  BlockExchangeFeePage({this.blockExchangeFee, this.total});

  BlockExchangeFeePage.fromJson(Map<String, dynamic> json) {
    if (json['blockExchangeFee'] != null) {
      blockExchangeFee = <BlockExchangeFee>[];
      json['blockExchangeFee'].forEach((v) {
        blockExchangeFee.add(BlockExchangeFee.fromJson(v));
      });
    }
    total = json['total'];
  }
}

/// Read more: [HTTP API ``BlockExchangeFee`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#blockexchangefee)
class BlockExchangeFee {
  String address;
  int blockHeight;
  int blockTime;
  String fee;
  int tradeCount;

  BlockExchangeFee({this.address, this.blockHeight, this.blockTime, this.fee, this.tradeCount});

  BlockExchangeFee.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    blockHeight = json['blockHeight'];
    blockTime = json['blockTime'];
    fee = json['fee'];
    tradeCount = json['tradeCount'];
  }
}

/// Read more: [HTTP API ``TxPage`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#txpage)
class TxPage {
  List<Tx> tx;
  int total;

  TxPage({this.tx, this.total});

  TxPage.fromJson(Map<String, dynamic> json) {
    if (json['tx'] != null) {
      tx = <Tx>[];
      json['tx'].forEach((v) {
        tx.add(Tx.fromJson(v));
      });
    }
    total = json['total'];
  }
}

/// Read more: [HTTP API ``BlockTx`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#blocktx)
class BlockTx {
  int blockHeight;
  List<Tx> tx;

  BlockTx({this.blockHeight, this.tx});

  BlockTx.fromJson(Map<String, dynamic> json) {
    blockHeight = json['blockHeight'];
    if (json['tx'] != null) {
      tx = <Tx>[];
      json['tx'].forEach((v) {
        tx.add(Tx.fromJson(v));
      });
    }
  }
}

class BlockTxV2 {
  int blockHeight;
  List<TxV2> tx;

  BlockTxV2({this.blockHeight, this.tx});

  BlockTxV2.fromJson(Map<String, dynamic> json) {
    blockHeight = json['blockHeight'];
    if (json['tx'] != null) {
      tx = <TxV2>[];
      json['tx'].forEach((v) {
        tx.add(TxV2.fromJson(v));
      });
    }
  }
}

/// Read more: [HTTP API ``Tx`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#tx)
class Tx {
  String txHash;
  int blockHeight;
  String txType;
  String timeStamp;
  String fromAddr;
  String toAddr;
  String value;
  String txAsset;
  String txFee;
  String proposalId;
  int txAge;
  String orderId;
  int code;
  String data;
  int confirmBlocks;
  String memo;
  int source;
  int sequence;

  Tx({this.txHash, this.blockHeight, this.txType, this.timeStamp, this.fromAddr, this.toAddr, this.value, this.txAsset, this.txFee, this.proposalId, this.txAge, this.orderId, this.code, this.data, this.confirmBlocks, this.memo, this.source, this.sequence});

  Tx.fromJson(Map<String, dynamic> json) {
    txHash = json['txHash'];
    blockHeight = json['blockHeight'];
    txType = json['txType'];
    timeStamp = json['timeStamp'];
    fromAddr = json['fromAddr'];
    toAddr = json['toAddr'];
    value = json['value'];
    txAsset = json['txAsset'];
    txFee = json['txFee'];
    proposalId = json['proposalId'];
    txAge = json['txAge'];
    orderId = json['orderId'];
    code = json['code'];
    data = json['data'];
    confirmBlocks = json['confirmBlocks'];
    memo = json['memo'];
    source = json['source'];
    sequence = json['sequence'];
  }
}

/// Read more: [HTTP API ``ResultStatus`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#resultstatus)
class ResultStatus {
  NodeInfo nodeInfo;
  SyncInfo syncInfo;
  ValidatorInfo validatorInfo;

  ResultStatus({this.nodeInfo, this.syncInfo, this.validatorInfo});

  ResultStatus.fromJson(Map<String, dynamic> json) {
    nodeInfo = json['node_info'] != null ? NodeInfo.fromJson(json['node_info']) : null;
    syncInfo = json['sync_info'] != null ? SyncInfo.fromJson(json['sync_info']) : null;
    validatorInfo = json['validator_info'] != null ? ValidatorInfo.fromJson(json['validator_info']) : null;
  }
}

/// Read more: [HTTP API ``NodeInfo`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#nodeinfo)
class NodeInfo {
  ProtocolVersion protocolVersion;
  String id;
  String listenAddr;
  String network;
  String version;
  String channels;
  String moniker;
  Other other;

  NodeInfo({this.protocolVersion, this.id, this.listenAddr, this.network, this.version, this.channels, this.moniker, this.other});

  NodeInfo.fromJson(Map<String, dynamic> json) {
    json = json['node_info'];
    protocolVersion = json['protocol_version'] != null ? ProtocolVersion.fromJson(json['protocol_version']) : null;
    id = json['id'];
    listenAddr = json['listen_addr'];
    network = json['network'];
    version = json['version'];
    channels = json['channels'];
    moniker = json['moniker'];
    other = json['other'] != null ? Other.fromJson(json['other']) : null;
  }
}

/// Read more: [HTTP API ``SyncInfo`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#syncinfo)
class SyncInfo {
  String latestBlockHash;
  String latestAppHash;
  int latestBlockHeight;
  String latestBlockTime;
  bool catchingUp;

  SyncInfo({this.latestBlockHash, this.latestAppHash, this.latestBlockHeight, this.latestBlockTime, this.catchingUp});

  SyncInfo.fromJson(Map<String, dynamic> json) {
    latestBlockHash = json['latest_block_hash'];
    latestAppHash = json['latest_app_hash'];
    latestBlockHeight = json['latest_block_height'];
    latestBlockTime = json['latest_block_time'];
    catchingUp = json['catching_up'];
  }
}

/// Read more: [HTTP API ``ProtocolVersion`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#protocolversion)
class ProtocolVersion {
  int p2p;
  int block;
  int app;

  ProtocolVersion({this.p2p, this.block, this.app});

  ProtocolVersion.fromJson(Map<String, dynamic> json) {
    p2p = json['p2p'];
    block = json['block'];
    app = json['app'];
  }
}

class Other {
  String txIndex;
  String rpcAddress;

  Other({this.txIndex, this.rpcAddress});

  Other.fromJson(Map<String, dynamic> json) {
    txIndex = json['tx_index'];
    rpcAddress = json['rpc_address'];
  }
}

/// Read more: [HTTP API ``ValidatorInfo`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#validatorinfo)
class ValidatorInfo {
  String address;
  List<int> pubKey;
  int votingPower;

  ValidatorInfo({this.address, this.pubKey, this.votingPower});

  ValidatorInfo.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    pubKey = json['pub_key'].cast<int>();
    votingPower = json['voting_power'];
  }
}

/// Read more: [HTTP API ``AtomicSwapPage`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#atomicswappage)
class AtomicSwapPage {
  int total;
  List<AtomicSwap> atomicSwaps;

  AtomicSwapPage({this.total, this.atomicSwaps});

  AtomicSwapPage.fromJson(Map<String, dynamic> json) {
    if (json['atomicSwaps'] != null) {
      atomicSwaps = <AtomicSwap>[];
      json['atomicSwaps'].forEach((v) {
        atomicSwaps.add(AtomicSwap.fromJson(v));
      });
    }
    total = json['total'];
  }
}

/// Read more: [HTTP API ``AtomicSwap`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#atomicswap)
class AtomicSwap {
  int blockTimestamp;
  int closedTime;
  int crossChain;
  String expectedIncome;
  int expireHeight;
  String fromAddr;
  String inAmount;
  String outAmount;
  String randomNumber;
  String randomNumberHash;
  String recipientOtherChain;
  int status;
  String swapId;
  String timestamp;
  String toAddr;

  AtomicSwap({
    this.blockTimestamp,
    this.closedTime,
    this.crossChain,
    this.expectedIncome,
    this.expireHeight,
    this.fromAddr,
    this.inAmount,
    this.outAmount,
    this.randomNumber,
    this.randomNumberHash,
    this.recipientOtherChain,
    this.status,
    this.swapId,
    this.timestamp,
    this.toAddr,
  });

  AtomicSwap.fromJson(Map<String, dynamic> json) {
    blockTimestamp = json['blockTimestamp;'];
    closedTime = json['closedTime;'];
    crossChain = json['crossChain;'];
    expectedIncome = json['expectedIncome;'];
    expireHeight = json['expireHeight;'];
    fromAddr = json['fromAddr;'];
    inAmount = json['inAmount;'];
    outAmount = json['outAmount;'];
    randomNumber = json['randomNumber;'];
    randomNumberHash = json['randomNumberHash;'];
    recipientOtherChain = json['recipientOtherChain;'];
    status = json['status;'];
    swapId = json['swapId;'];
    timestamp = json['timestamp;'];
    toAddr = json['toAddr;'];
  }
}

/// Read more: [HTTP API ``TxV2`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#txv2)
class TxV2 {
  int blockHeight;
  int code;
  String data;
  String fromAddr;
  String memo;
  String orderId;
  String proposalId;
  int sequence;
  int source;
  List<SubTx> subTransactions;
  String swapId;
  String timeStamp;
  String toAddr;
  String txAsset;
  String txFee;
  String txHash;
  String txType;
  String value;

  TxV2({this.txHash, this.blockHeight, this.txType, this.timeStamp, this.fromAddr, this.toAddr, this.value, this.txAsset, this.txFee, this.proposalId, this.orderId, this.code, this.data, this.subTransactions, this.swapId, this.memo, this.source, this.sequence});

  TxV2.fromJson(Map<String, dynamic> json) {
    txHash = json['txHash'];
    blockHeight = json['blockHeight'];
    txType = json['txType'];
    timeStamp = json['timeStamp'];
    fromAddr = json['fromAddr'];
    toAddr = json['toAddr'];
    value = json['value'];
    txAsset = json['txAsset'];
    txFee = json['txFee'];
    proposalId = json['proposalId'];
    orderId = json['orderId'];
    code = json['code'];
    data = json['data'];
    memo = json['memo'];
    source = json['source'];
    sequence = json['sequence'];
    subTransactions = json['subTransactions'];
    swapId = json['swapId'];
  }
}

/// Read more: [HTTP API ``MiniToken`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#minitokens)
class MiniToken {
  String name;
  String originalSymbol;
  String symbol;
  String owner;
  String tokenUri;
  int tokenType;
  String totalSupply;
  bool mintable;

  MiniToken({this.name, this.originalSymbol, this.symbol, this.owner, this.tokenUri, this.tokenType, this.totalSupply, this.mintable});

  MiniToken.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    originalSymbol = json['original_symbol'];
    symbol = json['symbol'];
    owner = json['owner'];
    tokenUri = json['token_uri'];
    tokenType = json['token_type'];
    totalSupply = json['total_supply'];
    mintable = json['mintable'];
  }
}
