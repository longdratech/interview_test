import 'package:interviewtest/model/location.dart';
import 'package:interviewtest/model/name.dart';
import 'package:interviewtest/model/picture.dart';
import 'package:json_annotation/json_annotation.dart';

part 'results.g.dart';

@JsonSerializable()
class ResultsModel {
  final String gender;
  final NameModel name;
  final LocationModel location;
  final String email;
  final PictureModel picture;
  final String phoneNumber;

  ResultsModel({this.gender, this.name, this.location, this.email, this.picture, this.phoneNumber});

  factory ResultsModel.fromJson(Map<String, dynamic> json) => _$ResultsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsModelToJson(this);
}
