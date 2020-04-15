import 'dart:convert';

import 'package:flutter/services.dart';

abstract class MockBaseRepository<T >{
  Future<List<T>> listAll() async {
    return await list(null, null, null, null, null, []);
  }

  Future<List<TEntity>> listRaw<TEntity>(
      String query, TEntity Function(Map<String, dynamic>) mapper,
      [final List<String> args = const <String>[]]) async {
    return null;
  }

  Future<List<T>> list(
      String where, String orderBy, bool asc, int pageIndex, int pageSize,
      [final List<String> args = const <String>[]]) async {
    return null;
  }
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
