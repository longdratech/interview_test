// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultsModel _$ResultsModelFromJson(Map<String, dynamic> json) {
  return ResultsModel(
    gender: json['gender'] as String,
    name: json['name'] == null
        ? null
        : NameModel.fromJson(json['name'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    email: json['email'] as String,
    picture: json['picture'] == null
        ? null
        : PictureModel.fromJson(json['picture'] as Map<String, dynamic>),
    phoneNumber: json['phoneNumber'] as String,
  );
}

Map<String, dynamic> _$ResultsModelToJson(ResultsModel instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'location': instance.location,
      'email': instance.email,
      'picture': instance.picture,
      'phoneNumber': instance.phoneNumber,
    };
