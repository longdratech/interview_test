import 'dart:convert';

import 'package:flutter/services.dart';

abstract class MockBaseRepository<T >{
  Future<TEntity> loadFromFile<TEntity>(
      String path, TEntity Function(Map<String, dynamic>) mapper) async {
    var txt = await rootBundle.loadString(path);
    var jsonObj = json.decode(txt);
    return jsonObj.map<TEntity>((model) => mapper(model)).toList();
  }

  Future insert(T item) async {}

  Future update(T item) async {}

  Future delete(T item) async {}
}
