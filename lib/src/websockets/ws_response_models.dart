class WsBinanceMessage<DataModel> {
  String stream;
  DataModel data;

  WsBinanceMessage({
    this.stream,
    this.data,
  });

  void fromJson(Map<String, dynamic> json) {
    stream = json['stream'];
    switch (stream) {
      case 'orders':
        if (json['data'] != null) {
          var orders = <OrdersData>[];
          json['data'].forEach((v) {
            orders.add(OrdersData.fromJson(v));
          });

          data = orders as DataModel;
        }
        break;
      case 'transfers':
        data = TransferData.fromJson(json['data']) as DataModel;
        break;
      case 'marketDepth':
        data = MarketDepthData.fromJson(json['data']) as DataModel;
        break;
      case 'accounts':
        data = AccountData.fromJson(json['data']) as DataModel;

        break;
      default:
        data = null;
    }
  }
}

//////////////////////////////////////////////////////////////////////////////////
class TransferData {
  String eventType;
  int eventHeight;
  String txHash;
  String memo;
  String from;
  List<To> to;

  TransferData({this.eventType, this.eventHeight, this.txHash, this.memo, this.from, this.to});

  TransferData.fromJson(Map<String, dynamic> json) {
    eventType = json['e'];
    eventHeight = json['E'];
    txHash = json['H'];
    memo = json['M'];
    from = json['f'];
    if (json['t'] != null) {
      to = List<To>();
      json['t'].forEach((v) {
        to.add(To.fromJson(v));
      });
    }
  }
}

class To {
  String toAddr;
  List<Coins> coins;

  To({this.toAddr, this.coins});

  To.fromJson(Map<String, dynamic> json) {
    toAddr = json['o'];
    if (json['c'] != null) {
      coins = List<Coins>();
      json['c'].forEach((v) {
        coins.add(Coins.fromJson(v));
      });
    }
  }
}

class Coins {
  String asset;
  String amount;

  Coins({this.asset, this.amount});

  Coins.fromJson(Map<String, dynamic> json) {
    asset = json['a'];
    amount = json['A'];
  }
}

//////////////////////////////////////////////////////////////////////////////////
class MarketDepthData {
  List<List<double>> bids;
  List<List<double>> asks;
  int lastUpdateId;
  String symbol;

  MarketDepthData({this.bids, this.asks, this.lastUpdateId, this.symbol});

  MarketDepthData.fromJson(Map<String, dynamic> json) {
    bids = List<List<double>>.from(json['bids']?.map((element) => List<double>.from(element.map((element_) => double.parse(element_))?.toList())));
    asks = List<List<double>>.from(json['asks']?.map((element) => List<double>.from(element.map((element_) => double.parse(element_))?.toList())));
    lastUpdateId = json['lastUpdateId'];
    symbol = json['symbol'];
  }
}

class OrdersData {
  String eventType;
  int eventHeight;
  String symbol;
  int side;
  int orderType;
  int timeInForce;
  String quantity;
  String price;
  String executionType;
  String orderStatus;
  String orderID;
  String lastExecutedQuantity;
  String cumulativeFilledQuantity;
  String lastExecutedPrice;
  String comission;
  int transactionTime;
  String tradeID;
  int orderCreationTime;

  OrdersData(
      {this.eventType,
      this.eventHeight,
      this.symbol,
      this.side,
      this.orderType,
      this.timeInForce,
      this.quantity,
      this.price,
      this.executionType,
      this.orderStatus,
      this.orderID,
      this.lastExecutedQuantity,
      this.cumulativeFilledQuantity,
      this.lastExecutedPrice,
      this.comission,
      this.transactionTime,
      this.tradeID,
      this.orderCreationTime});

  OrdersData.fromJson(Map<String, dynamic> json) {
    eventType = json['e'];
    eventHeight = json['E'];
    symbol = json['s'];
    side = json['S'];
    orderType = json['o'];
    timeInForce = json['f'];
    quantity = json['q'];
    price = json['p'];
    executionType = json['x'];
    orderStatus = json['X'];
    orderID = json['i'];
    lastExecutedQuantity = json['l'];
    cumulativeFilledQuantity = json['z'];
    lastExecutedPrice = json['L'];
    comission = json['n'];
    transactionTime = json['T'];
    tradeID = json['t'];
    orderCreationTime = json['O'];
  }
}

///////////////////////////////////////////////////////////////
class AccountData {
  String eventType;
  int eventHeight;
  List<BalanceData> balances;

  AccountData({this.eventType, this.eventHeight, this.balances});

  AccountData.fromJson(Map<String, dynamic> json) {
    eventType = json['e'];
    eventHeight = json['E'];
    if (json['B'] != null) {
      balances = List<BalanceData>();
      json['B'].forEach((v) {
        balances.add(BalanceData.fromJson(v));
      });
    }
  }
}

class BalanceData {
  String asset;
  String free;
  String locked;
  String frozen;

  BalanceData({this.asset, this.free, this.locked, this.frozen});

  BalanceData.fromJson(Map<String, dynamic> json) {
    asset = json['a'];
    free = json['f'];
    locked = json['l'];
    frozen = json['r'];
  }
}
////////////////////////////////////////////////////////////////////
