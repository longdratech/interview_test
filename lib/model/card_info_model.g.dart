// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardInfoModel _$CardInfoModelFromJson(Map<String, dynamic> json) {
  return CardInfoModel(
    cardTitle: json['cardTitle'] as String,
    cardImage: json['cardImage'] as String,
    address: json['address'] as String,
    phoneNumber: json['phoneNumber'] as int,
    topMargin: (json['topMargin'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$CardInfoModelToJson(CardInfoModel instance) =>
    <String, dynamic>{
      'cardTitle': instance.cardTitle,
      'cardImage': instance.cardImage,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'topMargin': instance.topMargin,
    };
