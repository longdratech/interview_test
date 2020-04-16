import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewtest/bloc/info_bloc.dart';
import 'package:interviewtest/repositories/api_service.dart';

import 'list_card_local.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('My Favourite Info Person'),
      ),
      body: BlocProvider(
        create: (context) => InfoBloc(repository: InfoRepository()),
        child: ListCardLocal(),
      ),
    );
  }

}
