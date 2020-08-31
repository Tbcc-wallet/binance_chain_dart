class BinanceEnvironment {
  final String _apiUrl;
  final String _wssUrl;
  final String _hrp;

  BinanceEnvironment(this._apiUrl, this._wssUrl, this._hrp);

  static BinanceEnvironment getProductionEnv() => BinanceEnvironment('https://dex.binance.org/api', 'wss://dex.binance.org/api', 'bnb');

  static BinanceEnvironment getTestnetEnv() => BinanceEnvironment('https://testnet-dex.binance.org/api', 'wss://testnet-dex.binance.org/api', 'tbnb');

  String get apiUrl => _apiUrl;
  String get wssUrl => _wssUrl;
  String get hrp => _hrp;
}
