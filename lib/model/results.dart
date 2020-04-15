import 'package:interviewtest/bloc/location.dart';
import 'package:interviewtest/bloc/name.dart';
import 'package:interviewtest/bloc/picture.dart';
import 'package:json_annotation/json_annotation.dart';

part 'results.g.dart';

@JsonSerializable()
class Results {
  final String gender;
  final Name name;
  final Location location;
  final String email;
  final Picture picture;

  Results({this.gender, this.name, this.location, this.email, this.picture});

  factory Results.fromJson(Map<String, dynamic> json) => _$ResultsFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}
