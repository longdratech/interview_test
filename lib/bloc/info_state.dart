import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:interviewtest/model/info.dart';

abstract class InfoState extends Equatable{
  const InfoState();

  @override
  List<Object> get props => [];
}

class InitialInfoState extends InfoState{}

class LoadedInfoState extends InfoState{
  final InfoModel listInfo;

  const LoadedInfoState({@required this.listInfo}) : assert(listInfo != null,"List info khong null");

  @override
  List<Object> get props => [listInfo];
}

class ErrorInfoState extends InfoState{}

class NoDataState extends InfoState{}

