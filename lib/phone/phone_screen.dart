import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:interviewtest/bloc/info_bloc.dart';
import 'package:interviewtest/local/favourite_screen.dart';
import 'package:interviewtest/repositories/info_repository.dart';
import 'package:interviewtest/repositories/info_service.dart';
import 'package:interviewtest/widget/swipe_card_list.dart';

class PhoneScreen extends StatelessWidget {
  static final InfoRepository infoRepository = InfoRepository(
    infoAPIClient: InfoAPIClient(
      httpClient: http.Client(),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InfoBloc(repository: infoRepository),
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            _backgroundColor(),
            ListCard(),
            Positioned(
              top: 100,
              right: 30,
              child: GestureDetector(
                child: Icon(Icons.favorite_border, color: Colors.red, size: 25),
                onTap: () {
                  print("Click Icon");
                  Navigator.of(context).push(MaterialPageRoute(builder: ( context) => FavouriteScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _backgroundColor(){
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            color: Color.fromRGBO(44, 45, 50, 1),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Color.fromRGBO(249, 249, 249, 1),
          ),
        )
      ],
    );
  }
}
