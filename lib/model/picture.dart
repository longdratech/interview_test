import 'package:json_annotation/json_annotation.dart';

part 'picture.g.dart';
@JsonSerializable()
class PictureModel {
  final String large;
  final String medium;
  final String thumbnail;

  PictureModel({this.large, this.medium, this.thumbnail});

  factory PictureModel.fromJson(Map<String, dynamic> json) => _$PictureModelFromJson(json);

  Map<String, dynamic> toJson() => _$PictureModelToJson(this);
}