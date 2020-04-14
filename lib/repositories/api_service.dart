import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

///TODO: Mock data from assets
Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/json/info.json');
}