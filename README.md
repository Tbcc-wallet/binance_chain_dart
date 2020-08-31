## binance_chain_dart

This is unofficial Dart wrapper for the [Binance Chain API](https://docs.binance.org/api-reference/dex-api/paths.html "Binance Chain API").
Most of the classes are ports from [python-binance-chain](https://github.com/sammchardy/python-binance-chain) and [Binance Chain Java SDK](https://github.com/binance-chain/java-sdk)
## Features

* HTTP API in async implementation
* Websocket API with automatic "keep alive" messages
* Create, sign and broadcast messages (transactions)
* Wallet creation from private key or mnemonic phrase
* Wallet handling account sequence for transactions
* Helper classes for handling responses from Binance API. Data models are presented as classes that parse the JSON from responses
* Using the "[Decimal](https://pub.dev/packages/decimal)" library for a more accurate representation of amounts when sending transactions.
* 100% Flutter compatibility
* 100% Dart native

## Useful links
* [Binance Chain docs](https://docs.binance.org/)
* [Binance Chain Telegram](https://t.me/BinanceDEXchange)
* [Binance Chain Community Forum](https://community.binance.org/)
* [Tendermint Docs](https://docs.tendermint.com/master/)
* [How to get Testnet funds](https://academy.binance.com/tutorials/binance-dex-funding-your-testnet-account)

## Usage

A simple usage example:

```dart
import 'package:binance_chain/binance_chain.dart';

main() async {
  //
  var testnetEnv = BinanceEnvironment.getTestnetEnv();
  var httpClient = HttpApiClient(env: testnetEnv);
  
  // create wallet from mnemonic phrase
  var wallet = Wallet.fromMnemonicPhrase('mnemonic phrase 12-24 words', testnetEnv)
  // or from private key
  var wallet = Wallet('private key in hexadecimal', testnetEnv)
  
  // get account info
  var account = httpClient.getAccount('tbnb1v8603f3ene9zd2y44s6czhhjw7sd8gs9v4est4');
  
  // get open orders of account
  var openOrders = httpClient.getOpenOrders('tbnb1v8603f3ene9zd2y44s6czhhjw7sd8gs9v4est4');
  
  // get order from order id
  var order = httpClient.getOrder('9D0537108883C68B8F43811B780327CE97D8E01D-2');
  
  // get transactions
  var transactions = httpClient.getTransacions('tbnb1v8603f3ene9zd2y44s6czhhjw7sd8gs9v4est4');
  
}
```
