import 'package:interviewtest/model/info.dart';
import 'package:meta/meta.dart';

import 'info_service.dart';

class InfoRepository {
  InfoRepository({this.infoAPIClient});

  final InfoAPIClient infoAPIClient;

  Future<InfoModel> getInfo() async {
    final stores = await infoAPIClient.fetchInfoData();
    return stores;
  }
}
