import 'package:equatable/equatable.dart';

abstract class InfoEvent extends Equatable{
  const InfoEvent();

  @override
  List<Object> get props => [];
}

class FetchInfoEvent extends InfoEvent{}