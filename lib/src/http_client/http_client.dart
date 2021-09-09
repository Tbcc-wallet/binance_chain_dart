import 'dart:convert';

import 'package:binance_chain/src/wallet.dart';
import 'package:http/http.dart';
import '../environment.dart';
import '../messages/messages.dart';
import 'http_response_models.dart';
import '../utils/constants.dart';

class HttpApiClient {
  BinanceEnvironment? _env;
  final Client _httpClient = Client();

  HttpApiClient({BinanceEnvironment? env}) {
    _env = env ?? BinanceEnvironment.getProductionEnv();
  }

  BinanceEnvironment? get env => _env;

  String _createFullPath(String path) {
    return '${_env!.apiUrl}/v1/$path';
  }

  Future<APIResponse> _request(String method, String path, {Map<String, String>? headers, dynamic body, bool? customPath}) async {
    var url = customPath == true ? path : _createFullPath(path);
    late var resp;
    switch (method) {
      case 'post':
        resp = await _httpClient.post(Uri.parse(url), headers: headers, body: body);
        break;
      case 'get':
        resp = await _httpClient.get(Uri.parse(url), headers: headers);
        break;
    }

    return _handle_response(resp);
  }

  APIResponse _handle_response(Response response) {
    var res;
    try {
      res = json.decode(response.body);
    } catch (e) {
      print('$e, ${response.body}');
    }

    return APIResponse(response.statusCode, res);
  }

  Future<APIResponse<dynamic>> _post(String path, {Map<String, String> headers = const {}, dynamic body = '', bool customPath = false}) async {
    return _request('post', path, headers: headers, body: body, customPath: customPath);
  }

  Future<APIResponse<dynamic>> _get(String path, {Map<String, String>? headers, bool customPath = false}) async {
    return _request('get', path, headers: headers, customPath: customPath);
  }

  /// Gets the latest block time and the current time according to the HTTP service.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1time)
  Future<APIResponse<Times>> getBlockTime() async {
    var res = await _get('time');
    res.load = Times.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Gets runtime information about the node.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1node-info)
  Future<APIResponse<NodeInfo>> getNodeInfo() async {
    var res = await _get('node-info');
    res.load = NodeInfo.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Gets the list of validators used in consensus.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1validators)
  Future<APIResponse<Validators>> getValidators() async {
    var res = await _get('peers');
    res.load = Validators.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Gets the list of network peers.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1peers)
  Future<APIResponse<List<Peer>>> getPeers() async {
    var res = await _get('peers');
    res.load = res.ok! ? <Peer>[for (var item in res.load) Peer.fromJson(item)] : <Peer>[];
    return APIResponse.fromOther(res);
  }

  /// Gets account metadata for an address.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1accountaddress)
  Future<APIResponse<Account>> getAccount(String? address) async {
    var res = await _get('account/$address');
    res.load = Account.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Gets an account sequence for an address.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1accountaddresssequence)
  Future<APIResponse<AccountSequence>> getAccountSequence(String address) async {
    var res = await _get('account/$address/sequence');
    res.load = AccountSequence.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Gets transaction metadata by transaction ID.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1txhash)
  Future<APIResponse<Transaction>> getSingleTransaction(String txHash, {String format = 'json'}) async {
    final path = 'tx/$txHash?format=$format';
    var res = await _get(path);
    res.load = Transaction.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Gets a list of tokens that have been issued.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1tokens)
  Future<APIResponse<List<Token>>> getTokens({int? limit, int? offset}) async {
    final path = 'tokens?${limit != null ? 'limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}';
    var res = await _get(path);
    res.load = res.ok! ? <Token>[for (var item in res.load) Token.fromJson(item)] : <Token>[];
    return APIResponse.fromOther(res);
  }

  /// Gets the list of market pairs that have been listed.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1markets)
  Future<APIResponse<List<Market>>> getMarkets({int? limit, int? offset}) async {
    final path = 'markets?${limit != null ? 'limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}';
    var res = await _get(path);
    res.load = res.ok! ? <Market>[for (var item in res.load) Market.fromJson(item)] : <Market>[];
    return APIResponse.fromOther(res);
  }

  /// Gets the current trading fees settings.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1fees)
  Future<APIResponse<List<Fee>>> getFees({int? limit, int? offset}) async {
    final path = 'fees';
    var res = await _get(path);
    res.load = res.ok! ? [for (var item in res.load) Fee.fromJson(item)] : [];
    return APIResponse.fromOther(res);
  }

  /// Gets the order book depth data for a given pair symbol.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1depth)
  Future<APIResponse<MarketDepth>> getOrderBook(String marketPair) async {
    final path = 'depth?symbol=$marketPair&limit=50';
    var res = await _get(path);
    res.load = MarketDepth.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Broadcasts a signed transaction
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1broadcast)
  Future<APIResponse<List<Transaction>>> broadcastMsg(Msg msg, {bool sync = false}) async {
    await msg.wallet!.initialize_wallet();
    //print(msg.wallet!.sequence);
    var res = await _post('broadcast${sync ? '?sync=true' : ''}', headers: <String, String>{'content-type': 'text/plain'}, body: msg.to_hex_data());

    //print(res.load);
    //print(msg.wallet!.sequence);
    if (res.statusCode == 200) {
      msg.wallet!.increment_account_sequence();

      res.load = List<Transaction>.generate(res.load.length, (index) => Transaction.fromJson(res.load[index]));
    } else {
      res.load = null;
    }

    return APIResponse.fromOther(res);
  }

  Future<APIResponse<List<Transaction>>> broadcastRawMsg(String hexMsg, {bool sync = false}) async {
    var res = await _post('broadcast${sync ? '?sync=true' : ''}', headers: <String, String>{'content-type': 'text/plain'}, body: hexMsg);

    print(res.load);

    if (res.statusCode == 200) {
      res.load = List<Transaction>.generate(res.load.length, (index) => Transaction.fromJson(res.load[index]));
    } else {
      res.load = null;
    }

    return APIResponse.fromOther(res);
  }

  Future<APIResponse<List<Transaction>>> broadcastSuperMsg(Msg msg, {Map<String, dynamic>? withJsonAndSign, required Wallet signWallet, bool sync = false}) async {
    var res = await _post('broadcast${sync ? '?sync=true' : ''}', headers: <String, String>{'content-type': 'text/plain'}, body: msg.to_hex_dataV2(withJsonAndSign, signWallet));

    signWallet.increment_account_sequence();

    if (res.statusCode == 200) {
      res.load = List<Transaction>.generate(res.load.length, (index) => Transaction.fromJson(res.load[index]));
    } else {
      res.load = null;
    }

    return APIResponse.fromOther(res);
  }

  /// Gets candlestick/kline bars for a symbol. Bars are uniquely identified by their open time.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1klines)
  Future<APIResponse<List<Candlestick>>> getCandlestickBars({
    required String symbol,
    CandlestickInterval interval = CandlestickInterval.INTERVAL_1h,
    int? limit,
    int? startTime,
    int? endTime,
  }) async {
    final path = 'klines?symbol=$symbol'
        '&interval=${interval.toString().split('_')[1]}'
        '${limit != null ? '&limit=' + interval.toString().split('_')[1] : ''}'
        '${startTime != null ? '&start=$startTime' : ''}'
        '${endTime != null ? '&end=$endTime' : ''}';

    var res = await _get(path);

    res.load = List.generate(res.load?.length, (index) => Candlestick.fromJson(res.load[index]));
    return APIResponse.fromOther(res);
  }

  /// Gets closed (filled and cancelled) orders for a given address.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1ordersclosed)
  Future<APIResponse<OrderList>> getClosedOrders({
    required String address,
    int? endTime,
    int? limit,
    int? offset,
    OrderSide? side,
    int? startTime,
    String? symbol,
    int? total,
  }) async {
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

  /// Gets open orders for a given address.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1ordersopen)
  Future<APIResponse<OrderList>> getOpenOrders({required String address, int? limit, int? offset, String? symbol, int? total}) async {
    final path = 'orders/open?address=$address';
    '${limit != null ? '&limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}'
        '${symbol != null ? '&symbol=$symbol' : ''}'
        '${total != null ? '&total=$total' : ''}';

    var res = await _get(path);
    res.load = OrderList.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Gets metadata for an individual order by its ID.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1ordersid)
  Future<APIResponse<Order>> getOrder(String orderID) async {
    final path = 'orders/$orderID';
    var res = await _get(path);
    res.load = Order.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Gets 24 hour price change statistics for a market pair symbol. Updated every second.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1ticker24hr)
  Future<APIResponse<List<TickerStatistics>>> getTickerStats24hr({String? symbol}) async {
    final path = "ticker/24hr${symbol != null ? '?symbol=$symbol' : ''}";
    var res = await _get(path);

    res.load = res.ok! ? <TickerStatistics>[for (var item in res.load) TickerStatistics.fromJson(item)] : <TickerStatistics>[];

    return APIResponse.fromOther(res);
  }

  /// Gets a list of historical trades.
  /// Default query window is latest 7 days; The maximum start - end query window is 3 months.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1trades)
  Future<APIResponse<TradePage>> getTrades({
    String? address,
    String? buyerOrderId,
    int? endTime,
    int? blockHeight,
    int? limit,
    int? offset,
    String? quoteAsset,
    String? sellerOrderId,
    OrderSide? side,
    int? startTime,
    String? symbol,
    int? total,
  }) async {
    final path = 'trades?'
        '${address != null ? '&address=$address' : ''}'
        '${buyerOrderId != null ? '&buyerOrderId=$buyerOrderId' : ''}'
        '${endTime != null ? '&end=$endTime' : ''}'
        '${blockHeight != null ? '&height=$blockHeight' : ''}'
        '${limit != null ? '&limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}'
        '${quoteAsset != null ? '&quoteAsset=$quoteAsset' : ''}'
        '${sellerOrderId != null ? '&sellerOrderId=$sellerOrderId' : ''}'
        '${side != null ? '&side=' + side.value.toString() : ''}'
        '${startTime != null ? '&start=$startTime' : ''}'
        '${symbol != null ? '&symbol=$symbol' : ''}'
        '${total != null ? '&total=$total' : ''}';

    var res = await _get(path);

    res.load = TradePage.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Get historical trading fees of the address, including fees of trade/canceled order/expired order. Transfer and other transaction fees are not included. Order by block height DESC. Query Window: Default query window is latest 7 days; The maximum start - end query window is 3 months. Rate Limit: 5 requests per IP per second.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1block-exchange-fee)
  Future<APIResponse<BlockExchangeFeePage>> getTradingFee({
    String? address,
    int? endTime,
    int? limit,
    int? offset,
    int? startTime,
    int? total,
  }) async {
    final path = 'block-exchange-fee?'
        '${address != null ? '&address=$address' : ''}'
        '${endTime != null ? '&end=$endTime' : ''}'
        '${limit != null ? '&limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}'
        '${startTime != null ? '&start=$startTime' : ''}'
        '${total != null ? '&total=$total' : ''}';

    var res = await _get(path);

    res.load = BlockExchangeFeePage.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Gets a list of transactions. Multisend transaction is not available in this API. Currently 'confirmBlocks' and 'txAge' are not supported.
  /// Default query window is latest 24 hours; The maximum start - end query window is 3 months.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1transactions)
  Future<APIResponse<TxPage>> getTransactions({
    required String address,
    int? blockHeight,
    int? endTime,
    int? limit,
    int? offset,
    TxSide? side,
    int? startTime,
    String? txAsset,
    TxType? txType,
  }) async {
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

  /// Get transactions in the block. Multi-send and multi-coin transactions are flattened as transactions. `This API is deprecated.`
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1transactions-in-blockblockheight)
  Future<APIResponse<BlockTx>> getBlockTransactions({required int blockHeight}) async {
    final path = 'transactions-in-block/$blockHeight';

    var res = await _get(path);

    res.load = BlockTx.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Get transactions in the block. Multi-send and multi-coin transactions are included as sub-transactions.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv2transactions-in-blockblockheight)
  Future<APIResponse<BlockTxV2>> getBlockTransactionsV2({required int blockHeight}) async {
    final path = '${env!.apiUrl}/v2/transactions-in-block/$blockHeight';

    var res = await _get(path, customPath: true);

    res.load = BlockTxV2.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Get atomic swaps by address.
  /// At least one of toAddress and fromAddress should be provided as parameter
  /// The maximum start - end query window is 3 months; Default query window is the latest 30 days.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1atomic-swaps)
  Future<APIResponse<AtomicSwapPage>> getAtomicSwaps({
    int? endTime,
    String? from_address,
    int? limit,
    int? offset,
    int? startTime,
    int? to_address,
  }) async {
    final path = 'atomic-swaps?'
        '${endTime != null ? '&endTime=$endTime' : ''}'
        '${from_address != null ? '&from_address=$from_address' : ''}'
        '${limit != null ? '&limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}'
        '${startTime != null ? '&startTime=$startTime' : ''}'
        '${to_address != null ? '&to_address=$to_address' : ''}';

    var res = await _get(path);

    res.load = AtomicSwapPage.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Get an AtomicSwap by swap id
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1atomic-swapsid)
  Future<APIResponse<AtomicSwap>> getAtomicSwap({required String swapID}) async {
    final path = 'atomic-swaps/$swapID';

    var res = await _get(path);

    res.load = AtomicSwap.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Gets a list of available mini tokens.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1minitokens)
  Future<APIResponse<List<MiniToken>>> getMiniTokens({int? offset, int? limit}) async {
    final path = 'mini/tokens?${offset != null ? 'offset=$offset' : ''}&${limit != null ? 'limit=$limit' : ''}';

    var res = await _get(path);

    res.load = res.ok! ? <MiniToken>[for (var item in res.load) MiniToken.fromJson(item)] : <MiniToken>[];
    return APIResponse.fromOther(res);
  }

  /// Gets a list of mini market pairs.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1minimarkets)
  Future<APIResponse<List<Market>>> getMiniMarkets({int? offset, int? limit}) async {
    final path = 'mini/markets?${offset != null ? 'offset=$offset' : ''}&${limit != null ? 'limit=$limit' : ''}';

    var res = await _get(path);

    res.load = res.ok! ? <Market>[for (var item in res.load) Market.fromJson(item)] : <Market>[];
    return APIResponse.fromOther(res);
  }

  /// Gets candlestick/kline bars for a mini-token symbol pair. Bars are uniquely identified by their open time.
  /// If the time window is larger than limits, only the first n klines will return. In this case, please either shrink the window or increase the limit to get proper amount of klines.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1miniklines)
  Future<APIResponse<List<Candlestick>>> getCandlestickBarsMini({
    required String symbol,
    CandlestickInterval interval = CandlestickInterval.INTERVAL_1h,
    int? limit,
    int? startTime,
    int? endTime,
  }) async {
    final path = 'mini/klines?symbol=$symbol'
        '&interval=${interval.toString().split('_')[1]}'
        '${limit != null ? '&limit=' + interval.toString().split('_')[1] : ''}'
        '${startTime != null ? '&start=$startTime' : ''}'
        '${endTime != null ? '&end=$endTime' : ''}';

    var res = await _get(path);

    res.load = List.generate(res.load?.length, (index) => Candlestick.fromJson(res.load[index]));
    return APIResponse.fromOther(res);
  }

  /// Gets closed (filled and cancelled) orders for a given address.
  /// Default query window is latest 7 days; The maximum start - end query window is 3 months.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1miniordersclosed)
  Future<APIResponse<OrderList>> getClosedOrdersMini({
    required String address,
    int? endTime,
    int? limit,
    int? offset,
    OrderSide? side,
    int? startTime,
    String? symbol,
    int? total,
  }) async {
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

  /// Gets open orders for a given address. Rate Limit: 5 requests per IP per second.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1miniordersopen)
  Future<APIResponse<OrderList>> getOpenOrdersMini({required String address, int? limit, int? offset, String? symbol, int? total}) async {
    final path = 'mini/orders/open?address=$address';
    '${limit != null ? '&limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}'
        '${symbol != null ? '&symbol=$symbol' : ''}'
        '${total != null ? '&total=$total' : ''}';

    var res = await _get(path);
    res.load = OrderList.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Gets metadata for an individual order by its ID. Rate Limit: 5 requests per IP per second.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1miniordersid)
  Future<APIResponse<Order>> getOrderMini(String orderID) async {
    final path = 'mini/orders/$orderID';
    var res = await _get(path);
    res.load = Order.fromJson(res.load);
    return APIResponse.fromOther(res);
  }

  /// Gets 24 hour price change statistics for a market pair symbol. Updated every second. Rate Limit: 5 requests per IP per second.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1miniticker24hr)
  Future<APIResponse<List<TickerStatistics>>> getMiniTickerStats24hr({String? symbol}) async {
    final path = "mini/ticker/24hr${symbol != null ? '?symbol=$symbol' : ''}";
    var res = await _get(path);
    res.load = res.ok! ? <TickerStatistics>[for (var item in res.load) TickerStatistics.fromJson(item)] : <TickerStatistics>[];

    return APIResponse.fromOther(res);
  }

  /// Gets a list of historical trades. Query Window: Default query window is latest 7 days; The maximum start - end query window is 3 months. Rate Limit: 5 requests per IP per second.
  ///
  /// More info: [BinanceChain docs](https://docs.binance.org/api-reference/dex-api/paths.html#apiv1minitrades)
  Future<APIResponse<List<TradePage>>> getTradesMini({
    String? address,
    String? buyerOrderId,
    int? endTime,
    int? blockHeight,
    int? limit,
    int? offset,
    String? quoteAsset,
    String? sellerOrderId,
    OrderSide? side,
    int? startTime,
    String? symbol,
    int? total,
  }) async {
    final path = 'mini/trades?'
        '${address != null ? '&address=$address' : ''}'
        '${buyerOrderId != null ? '&buyerOrderId=$buyerOrderId' : ''}'
        '${endTime != null ? '&end=$endTime' : ''}'
        '${blockHeight != null ? '&height=$blockHeight' : ''}'
        '${limit != null ? '&limit=$limit' : ''}'
        '${offset != null ? '&offset=$offset' : ''}'
        '${quoteAsset != null ? '&quoteAsset=$quoteAsset' : ''}'
        '${sellerOrderId != null ? '&sellerOrderId=$sellerOrderId' : ''}'
        '${side != null ? '&side=' + side.value.toString() : ''}'
        '${startTime != null ? '&start=$startTime' : ''}'
        '${symbol != null ? '&symbol=$symbol' : ''}'
        '${total != null ? '&total=$total' : ''}';

    var res = await _get(path);

    res.load = TradePage.fromJson(res.load);
    return APIResponse.fromOther(res);
  }
}

/// Container for response.
class APIResponse<DataModel_T> {
  int? statusCode;
  DataModel_T? load;
  Error? error;
  bool? ok;
  APIResponse(this.statusCode, DataModel_T load) {
    ok = statusCode == 200;

    if (statusCode == 200) {
      this.load = load;
    } else {
      this.load = <String, dynamic>{} as DataModel_T;
      var load_ = load as Map;
      try {
        error = Error(code: statusCode, message: (load_['message'] as String?) != null ? load_['message'] : load.toString());
      } catch (_) {}
    }
  }

  APIResponse.fromOther(APIResponse other) {
    statusCode = other.statusCode;
    load = other.load;
    error = other.error;
    ok = other.ok;
  }
}
