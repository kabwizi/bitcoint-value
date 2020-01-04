import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];
//int index = 0;
const bitcoinAverageURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker';

//${cryptoList[index]}${currenciesList[index]}
class CoinData {
  String crypto;
  String currencies;
  CoinData({this.crypto, this.currencies});
  Future<dynamic> getDataBitCoin() async {
    http.Response reponse =
        await http.get("$bitcoinAverageURL/$crypto$currencies");
    var resultat = jsonDecode(reponse.body);
    return resultat;
  }
}
