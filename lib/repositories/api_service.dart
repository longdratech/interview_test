import 'dart:async' show Future;

import 'package:interviewtest/model/card_info_model.dart';
import 'package:interviewtest/repositories/base/base_mock_data.dart';

///TODO: Mock data from assets

class MockApiJson extends MockBaseRepository{

  List<CardInfoModel> caseCardModel = [];

  Future<List<CardInfoModel>> getListInfo() async {
    return await loadFromFile<CardInfoModel>("assets/json/info.json", convertJson);
  }

  CardInfoModel convertJson(Map<String, dynamic> json){
    return CardInfoModel.fromJson(json);
  }
}
