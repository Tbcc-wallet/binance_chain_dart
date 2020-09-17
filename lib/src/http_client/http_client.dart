import 'dart:convert';

import 'package:http/http.dart';
import 'package:meta/meta.dart';
import '../environment.dart';
import '../messages/messages.dart';
import 'http_response_models.dart';
import '../utils/constants.dart';

class HttpApiClient {
  BinanceEnvironment _env;
  final Client _httpClient = Client();

  HttpApiClient({BinanceEnvironment env}) {
    _env = env ?? BinanceEnvironment.getProductionEnv();
  }

  BinanceEnvironment get env => _env;

  String _createFullPath(String path) {
    return '${_env.apiUrl}/v1/$path';
  }

  Future<APIResponse> _request(String method, String path, {Map<String, String> headers, dynamic body}) async {
    var url = _createFullPath(path);
    var resp;
    switch (method) {
      case 'post':
        resp = await _httpClient.post(url, headers: headers, body: body);
        break;
      case 'get':
        resp = await _httpClient.get(url, headers: headers);
        break;
    }

    return _handle_response(resp);
  }

  APIResponse _handle_response(Response response) {
    var res = json.decode(response.body);

    return APIResponse(response.statusCode, res);
  }

  Future<APIResponse<dynamic>> _post(String path, {Map<String, String> headers = const {}, dynamic body = ''}) async {
    return _request('post', path, headers: headers, body: body);
  }

  Future<APIResponse<dynamic>> _get(String path, {Map<String, String> headers}) async {
    return _request('get', path, headers: headers);
  }

  Future<APIResponse<Times>> getBlockTime() async {
    var res = await _get('time');
    res.load = Times.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<NodeInfo>> getNodeInfo() async {
    var res = await _get('node-info');
    res.load = NodeInfo.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<List<Peer>>> getPeers() async {
    var res = await _get('peers');
    res.load = res.runtimeType == List ? [for (var item in res.load) Peer.fromJson(item)] : [];
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<Account>> getAccount(String address) async {
    var res = await _get('account/$address');
    res.load = Account.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<AccountSequence>> getAccountSequence(String address) async {
    var res = await _get('account/$address/sequence');
    res.load = AccountSequence.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<Transaction>> getSingleTransaction(String txHash, {String format = 'json'}) async {
    final path = 'tx/$txHash?format=$format';

    var res = await _get(path);
    res.load = Transaction.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<List<Token>>> getTokens({int limit, int offset}) async {
    final path = 'tokens?${limit != null ? 'limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}';

    var res = await _get(path);
    res.load = res.runtimeType == List ? [for (var item in res.load) Token.fromJson(item)] : [];

    return APIResponse.fromOther(res);
  }

  Future<APIResponse<List<Market>>> getMarkets({int limit, int offset}) async {
    final path = 'markets?${limit != null ? 'limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}';

    var res = await _get(path);
    res.load = res.runtimeType == List ? [for (var item in res.load) Market.fromJson(item)] : [];

    return APIResponse.fromOther(res);
  }

  Future<APIResponse<List<Fee>>> getFees({int limit, int offset}) async {
    final path = 'fees';

    var res = await _get(path);
    res.load = res.runtimeType == List ? [for (var item in res.load) Fee.fromJson(item)] : [];

    return APIResponse.fromOther(res);
  }

  Future<APIResponse<MarketDepth>> getOrderBook(String marketPair) async {
    final path = 'depth?symbol=$marketPair&limit=50';
    var res = await _get(path);
    res.load = MarketDepth.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<List<Transaction>>> broadcastMsg(Msg msg, {bool sync = false}) async {
    await msg.wallet.initialize_wallet();
    print(msg.wallet.sequence);
    var res = await _post('broadcast${sync ? '?sync=true' : ''}', headers: <String, String>{'content-type': 'text/plain'}, body: msg.to_hex_data());
    msg.wallet.increment_account_sequence();

    print(res.load);
    print(msg.wallet.sequence);
    if (res.statusCode == 200) {
      res.load = List<Transaction>.generate(res.load.length, (index) => Transaction.fromJson(res.load[index]));
    } else {
      res.load = null;
    }

    return APIResponse.fromOther(res);
  }

  Future<APIResponse<List<Candlestick>>> getCandlestickBars({@required String symbol, CandlestickInterval interval = CandlestickInterval.INTERVAL_1h, int limit, int startTime, int endTime}) async {
    final path = 'klines?symbol=$symbol'
        '&interval=${interval.toString().split('_')[1]}'
        '${limit != null ? '&limit=' + interval.toString().split('_')[1] : ''}'
        '${startTime != null ? '&start=$startTime' : ''}'
        '${endTime != null ? '&end=$endTime' : ''}';

    var res = await _get(path);

    res.load = List.generate(res.load?.length, (index) => Candlestick.fromJson(res.load[index]));
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<OrderList>> getClosedOrders({@required String address, int endTime, int limit, int offset, OrderSide side, int startTime, String symbol, int total}) async {
    final path = 'orders/closed?address=$address'
        '${endTime != null ? '&end=$endTime' : ''}'
        '${limit != null ? '&limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}'
        '${side != null ? '&side=' + side.value.toString() : ''}'
        '${startTime != null ? '&start=$startTime' : ''}'
        '${symbol != null ? '&symbol=$symbol' : ''}'
        '${total != null ? '&total=$total' : ''}';

    var res = await _get(path);
    res.load = OrderList.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<OrderList>> getOpenOrders({@required String address, int limit, int offset, String symbol, int total}) async {
    final path = 'orders/open?address=$address';
    '${limit != null ? '&limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}'
        '${symbol != null ? '&symbol=$symbol' : ''}'
        '${total != null ? '&total=$total' : ''}';

    var res = await _get(path);
    res.load = OrderList.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<Order>> getOrder(String orderID) async {
    final path = 'orders/$orderID';
    var res = await _get(path);
    res.load = Order.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<List<TickerStatistics>>> getTickerStats24hr({String symbol}) async {
    final path = "ticker/24hr${symbol != null ? '?symbol=$symbol' : ''}";
    var res = await _get(path);

    res.load = res.load.runtimeType == List ? [for (var item in res.load) TickerStatistics.fromJson(item)] : [];
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<List<TickerStatistics>>> getTrades(
      {String address,
      String buyerOrderId,
      int endTime,
      int blockHeight,
      int limit,
      int offset,
      String quoteAsset,
      String sellerOrderId,
      OrderSide side,
      int startTime,
      String symbol,
      int total}) async {
    final path = "trades/?"
        "${address != null ? '&address=$address' : ''}"
        "${buyerOrderId != null ? '&buyerOrderId=$buyerOrderId' : ''}"
        "${endTime != null ? '&end=$endTime' : ''}"
        "${blockHeight != null ? '&height=$blockHeight' : ''}"
        "${limit != null ? '&limit=$limit' : ''}"
        "${offset != null ? '&offset=$offset' : ''}"
        "${quoteAsset != null ? '&quoteAsset=$quoteAsset' : ''}"
        "${sellerOrderId != null ? '&sellerOrderId=$sellerOrderId' : ''}"
        "${side != null ? '&side=' + side.value.toString() : ''}"
        "${startTime != null ? '&start=$startTime' : ''}"
        "${symbol != null ? '&symbol=$symbol' : ''}"
        "${total != null ? '&total=$total' : ''}";

    var res = await _get(path);

    res.load = res.load.runtimeType == List ? [for (var item in res.load) TickerStatistics.fromJson(item)] : [];
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<TxPage>> getTransactions({@required String address, int blockHeight, int endTime, int limit, int offset, TxSide side, int startTime, String txAsset, TxType txType}) async {
    final path = 'transactions?address=$address'
        '${blockHeight != null ? '&blockHeight=$blockHeight' : ''}'
        '${endTime != null ? '&endTime=$endTime' : ''}'
        '${limit != null ? '&limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}'
        '${side != null ? '&side=' + side.toString().substring(side.toString().indexOf('.') + 1) : ''}'
        '${startTime != null ? '&startTime=$startTime' : ''}'
        '${txAsset != null ? '&txAsset=$txAsset' : ''}'
        '${txType != null ? '&txType=' + txType.toString().substring(txType.toString().indexOf('.') + 1) : ''}';

    var res = await _get(path);

    res.load = TxPage.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<List<TickerStatistics>>> getMiniTickerStats24hr({String symbol}) async {
    final path = "mini/ticker/24hr${symbol != null ? '?symbol=$symbol' : ''}";
    var res = await _get(path);
    res.load = res.load.runtimeType == List ? [for (var item in res.load) TickerStatistics.fromJson(item)] : [];

    return APIResponse.fromOther(res);
  }

  Future<APIResponse<Order>> getOrderMini(String orderID) async {
    final path = 'mini/orders/$orderID';
    var res = await _get(path);
    res.load = Order.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<OrderList>> getOpenOrdersMini({@required String address, int limit, int offset, String symbol, int total}) async {
    final path = 'mini/orders/open?address=$address';
    '${limit != null ? '&limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}'
        '${symbol != null ? '&symbol=$symbol' : ''}'
        '${total != null ? '&total=$total' : ''}';

    var res = await _get(path);
    res.load = OrderList.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<OrderList>> getClosedOrdersMini({@required String address, int endTime, int limit, int offset, OrderSide side, int startTime, String symbol, int total}) async {
    final path = 'mini/orders/closed?address=$address'
        '${endTime != null ? '&end=$endTime' : ''}'
        '${limit != null ? '&limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}'
        '${side != null ? '&side=' + side.value.toString() : ''}'
        '${startTime != null ? '&start=$startTime' : ''}'
        '${symbol != null ? '&symbol=$symbol' : ''}'
        '${total != null ? '&total=$total' : ''}';

    var res = await _get(path);
    res.load = OrderList.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  Future<APIResponse<List<Candlestick>>> getCandlestickBarsMini(
      {@required String symbol, CandlestickInterval interval = CandlestickInterval.INTERVAL_1h, int limit, int startTime, int endTime}) async {
    final path = 'mini/klines?symbol=$symbol'
        '&interval=${interval.toString().split('_')[1]}'
        '${limit != null ? '&limit=' + interval.toString().split('_')[1] : ''}'
        '${startTime != null ? '&start=$startTime' : ''}'
        '${endTime != null ? '&end=$endTime' : ''}';

    var res = await _get(path);

    res.load = List.generate(res.load?.length, (index) => Candlestick.fromJson(res.load[index]));
    return APIResponse.fromOther(res);
  }
}

class APIResponse<DataModel_T> {
  int statusCode;
  DataModel_T load;
  Error error;
  bool ok;
  APIResponse(this.statusCode, DataModel_T load) {
    ok = statusCode == 200;

    if (statusCode == 200) {
      this.load = load;
    } else {
      this.load = <String, dynamic>{} as DataModel_T;
      var load_ = load as Map;
      this.error = Error(code: statusCode, message: load_['message'] as String != null ? load_['message'] : load.toString());
    }
  }

  APIResponse.fromOther(APIResponse other) {
    statusCode = other.statusCode;
    load = other.load;
    error = other.error;
    ok = other.ok;
  }
}
