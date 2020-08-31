import 'dart:async';
import 'dart:convert';
import 'package:binance_chain/binance_chain.dart';
import 'package:binance_chain/src/websockets/ws_response_models.dart';
import 'package:web_socket_channel/io.dart';

class WebsocketBinanceListener {
  IOWebSocketChannel socket;
  BinanceEnvironment env;
  WebsocketBinanceListener(this.env);
  Stream<dynamic> stream;
  Timer _keepAliveTimer;
  void _subscribe<DataModel>(String connectionJsonMessage, Function(WsBinanceMessage<DataModel> message) onMessage) {
    socket = IOWebSocketChannel.connect('${env.wssUrl}/ws');
    stream = socket.stream.asBroadcastStream();

    stream.listen((message) {
      if (message.runtimeType == String) {
        if (message.contains('stream')) {
          if (onMessage != null) {
            onMessage(WsBinanceMessage<DataModel>()..fromJson(json.decode(message)));
          }
        }
      }
    }, onDone: () {
      _subscribe(connectionJsonMessage, onMessage);
    });

    socket.sink.add(connectionJsonMessage);
    _keepAliveTimer?.cancel();
    _keepAliveTimer = Timer.periodic(Duration(minutes: 25), (timer) {
      try {
        socket.sink.add(json.encode({'method': 'keepAlive'}));
      } catch (e) {
        _subscribe(connectionJsonMessage, onMessage);
      }
    });
  }

  /// Returns account updates.
  ///
  /// Read more: [Binance Chain Docs / websockets / Account](https://docs.binance.org/api-reference/dex-api/ws-streams.html#2-account).
  ///
  /// Data model of messages for this subscription is List<[AccountData]>.
  ///
  ///
  /// Example:
  /// ```dart
  ///   var accountUpdatesListener = WebsocketBinanceListener(BinanceEnvironment.getTestnetEnv());
  ///
  ///   accountUpdatesListener.subscribeAccountUpdates(
  ///     '<address>',
  ///     onMessage: (message) {
  ///       print(message.data.balances.first.asset);
  ///       print(message.data.balances.first.free);
  ///     },
  ///   );
  /// ```
  void subscribeAccountUpdates(String address, {Function(WsBinanceMessage<AccountData> message) onMessage}) {
    _subscribe<AccountData>(json.encode({'method': 'subscribe', 'topic': 'accounts', 'address': address}), onMessage);
  }

  /// Returns individual order updates.
  ///
  /// Read more: [Binance Chain Docs / websockets / Orders](https://docs.binance.org/api-reference/dex-api/ws-streams.html#1-orders).
  ///
  /// Data model of messages for this subscription is List<[OrdersData]>.
  ///
  ///
  /// Example:
  /// ```dart
  ///   var accountOrdersListener = WebsocketBinanceListener(BinanceEnvironment.getTestnetEnv());
  ///
  ///   accountOrdersListener.subscribeAccountOrders(
  ///     '<address>',
  ///     onMessage: (msg) {
  ///       print(msg.data.first.orderID);
  ///     }
  ///   );
  /// ```
  void subscribeAccountOrders(String address, {Function(WsBinanceMessage<List<OrdersData>> message) onMessage}) {
    _subscribe<List<OrdersData>>(json.encode({'method': 'subscribe', 'topic': 'orders', 'address': address}), onMessage);
  }

  /// Return transfer updates if address is involved (as sender or receiver) in a transfer. Multisend is also covered.
  ///
  /// Read more: [Binance Chain Docs / websockets / Transfer](https://docs.binance.org/api-reference/dex-api/ws-streams.html#3-transfer).
  ///
  /// Data model of messages for this subscription is [TransferData].
  ///
  ///
  /// Example:
  /// ```dart
  ///   var accountTransfersListener = WebsocketBinanceListener(BinanceEnvironment.getTestnetEnv());
  ///
  ///   accountTransfersListener.subscribeAccoutTransfers(
  ///     '<address>',
  ///     onMessage: (message) {
  ///       print(message.data.txHash);
  ///     }
  ///   );
  /// ```
  void subscribeAccoutTransfers(String address, {Function(WsBinanceMessage<TransferData> message) onMessage}) {
    _subscribe<TransferData>(json.encode({'method': 'subscribe', 'topic': 'transfers', 'address': address}), onMessage);
  }

  /// Top 20 (could extend to 100, 500, 1000) levels of bids and asks.
  ///
  /// Read more: [Binance Chain Docs / websockets / Book Depth Streams](https://docs.binance.org/api-reference/dex-api/ws-streams.html#6-book-depth-streams).
  ///
  /// Data model of messages for this subscription is [MarketDepthData].
  ///
  ///
  /// Example:
  /// ```dart
  ///   var orderBookListener = WebsocketBinanceListener(BinanceEnvironment.getTestnetEnv());
  ///
  ///   accountTransfersListener.subscribeOrderBook(
  ///      '<address>',
  ///      onMessage: (message) {
  ///        print(message.data.asks);
  ///      },
  ///    );
  /// ```
  void subscribeOrderBook(String marketPairSymbol, {Function(WsBinanceMessage<MarketDepthData> message) onMessage}) {
    _subscribe<MarketDepthData>(
        json.encode({
          'method': 'subscribe',
          'topic': 'marketDepth',
          'symbols': [marketPairSymbol]
        }),
        onMessage);
  }
}

class WebsocketBinanceManager {
  Map<String, WebsocketBinanceListener> sockets;

  WebsocketBinanceManager();
}
