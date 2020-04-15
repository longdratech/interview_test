import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewtest/bloc/info_event.dart';
import 'package:interviewtest/bloc/info_state.dart';
import 'package:interviewtest/repositories/api_service.dart';

class InfoBloc extends Bloc<InfoEvent, InfoState> {
  InfoRepository repository;

  InfoBloc({@required this.repository}) : assert(repository != null);

  @override
  InfoState get initialState => InitialInfoState();

  @override
  Stream<InfoState> mapEventToState(InfoEvent event) async* {
    if(event is FetchInfoEvent){
      try{
        final itemInfo = await repository.getListInfo();
        print("List item: $itemInfo");
        yield LoadedInfoState(listInfo: itemInfo);
      }catch(_){
        yield ErrorInfoState();
      }
    }
  }
}
