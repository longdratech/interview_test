import 'package:json_annotation/json_annotation.dart';

part 'card_info_model.g.dart';

@JsonSerializable()
class CardInfoModel {
  String cardTitle;
  String cardImage;
  String address;
  int phoneNumber;
  double topMargin;

  CardInfoModel({this.cardTitle, this.cardImage, this.address, this.phoneNumber, this.topMargin});

  factory CardInfoModel.fromJson(Map<String, dynamic> json) => _$CardInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardInfoModelToJson(this);
}