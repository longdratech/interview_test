import 'dart:async' show Future;

import 'package:interviewtest/bloc/info.dart';
import 'package:interviewtest/repositories/base/base_mock_data.dart';

///TODO: Mock data from assets

class InfoRepository extends MockBaseRepository{

  Info caseCardModel;

  Future<Info> getListInfo() async {
    return await loadFromFile<Info>("assets/json/info.json", convertJson);
  }

  Info convertJson(Map<String, dynamic> json){
    return Info.fromJson(json);
  }
}
