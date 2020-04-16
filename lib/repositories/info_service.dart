import 'dart:convert';
import 'package:interviewtest/model/info.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

class InfoAPIClient {
  InfoAPIClient({@required this.httpClient}) : assert(httpClient != null, "");

  final http.Client httpClient;

  Future<InfoModel> fetchInfoData() async {
    const url = 'https://api.jsonbin.io/b/5e97fa76435f5604bb426f5e';
    final response = await httpClient.get(url);

    if (response.statusCode != 200) {
      throw Exception("Failed to get all stores");
    }

    final storeJson = jsonDecode(response.body);
    return InfoModel.fromJson(storeJson);
  }
}