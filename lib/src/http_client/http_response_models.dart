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

/// Read more: [HTTP API ``AccountSequence`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#accountsequence)
class AccountSequence {
  int sequence;

  AccountSequence({this.sequence});

  AccountSequence.fromJson(Map<String, dynamic> json) {
    sequence = json['sequence'];
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

/// Read more: [HTTP API ``OrderList`` data model](https://docs.binance.org/api-reference/dex-api/paths.html#orderlist)
class OrderList {
  List<Order> order;
  int total;

  OrderList({this.order, this.total});

  OrderList.fromJson(Map<String, dynamic> json) {
    if (json['order'] != null) {
      order = List<Order>();
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
