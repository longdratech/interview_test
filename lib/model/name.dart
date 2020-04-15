import 'package:json_annotation/json_annotation.dart';

part 'name.g.dart';

@JsonSerializable()
class NameModel {
  final String title;
  final String first;
  final String last;

  NameModel({this.title, this.first, this.last});

  factory NameModel.fromJson(Map<String, dynamic> json) => _$NameModelFromJson(json);

  Map<String, dynamic> toJson() => _$NameModelToJson(this);
}