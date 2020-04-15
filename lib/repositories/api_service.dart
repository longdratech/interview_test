import 'dart:async' show Future;

import 'package:interviewtest/model/info.dart';
import 'package:interviewtest/repositories/base/base_mock_data.dart';

///TODO: Mock data from assets

class InfoRepository extends MockBaseRepository{

  InfoModel caseCardModel;

  Future<InfoModel> getListInfo() async {
    return await loadFromFile<InfoModel>("assets/json/info.json", convertJson);
  }

  InfoModel convertJson(Map<String, dynamic> json){
    return InfoModel.fromJson(json);
  }
}
