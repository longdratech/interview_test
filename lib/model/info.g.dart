// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoModel _$InfoModelFromJson(Map<String, dynamic> json) {
  return InfoModel(
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : ResultsModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InfoModelToJson(InfoModel instance) => <String, dynamic>{
      'results': instance.results,
    };
