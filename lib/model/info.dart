import 'package:interviewtest/model/results.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info.g.dart';

@JsonSerializable()
class InfoModel {
  final List<ResultsModel> results;

  InfoModel({this.results});

  factory InfoModel.fromJson(Map<String, dynamic> json) => _$InfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$InfoModelToJson(this);
}