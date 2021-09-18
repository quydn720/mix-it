import 'dart:convert';
import 'dart:io';

import 'package:drink_n_chill/model/drink.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final String apiKey;
  final String baseUrl;

  NetworkHelper({
    required this.baseUrl,
    required this.apiKey,
  });
  Future<DrinkModel> fetchDrinkById(int drinkId) async {
    // test 11007
    Uri uri = Uri.parse('$baseUrl$apiKey/lookup.php?i=$drinkId');
    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      final drink = DrinkModel.fromJson(jsonDecode(response.body));
      return drink;
    } else {
      throw SocketException('error occur');
    }
  }
}
