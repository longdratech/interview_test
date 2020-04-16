import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewtest/animation/swipe_card.dart';
import 'package:interviewtest/bloc/info_bloc.dart';
import 'package:interviewtest/bloc/info_event.dart';
import 'package:interviewtest/local/database_helper.dart';
import 'package:interviewtest/repositories/api_service.dart';
import 'package:interviewtest/widget/card_info.dart';

class ListCardLocal extends StatefulWidget {
  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCardLocal> {
  String nameLocal;
  String addressLocal;
  String phoneLocal;
  final dbHelper = DatabaseHelper.instance;

  @override
  Widget build(BuildContext context) {
    CardController controller;
    return  BlocProvider(
      create: (context) => InfoBloc(repository: InfoRepository())..add(FetchInfoEvent()),
      child: SwipeCard(
        orientation: AmassOrientation.BOTTOM,
        totalNum: 6,
        stackNum: 5,
        swipeEdge: 4.0,
        maxWidth: MediaQuery.of(context).size.width * 0.9,
        maxHeight: MediaQuery.of(context).size.width * 0.9,
        minWidth: MediaQuery.of(context).size.width * 0.8,
        minHeight: MediaQuery.of(context).size.width * 0.8,
        cardBuilder: (context, index) =>  CardInfo(
//          urlImage: nameLocal = welcomeImages[index],
//          address: addressLocal = address[index],
//          phoneNumber: phoneLocal = phone[index],
        ),
        cardController: controller = CardController(),
        swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
          /// Get swiping card's alignment
          if (align.x < 0) {
            print("swipe left");
          } else if (align.x > 0) {
            //Card is RIGHT swiping
            print("swipe right");
          }
        },
        swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
          /// Get orientation & index of swiped card!
        },
      ),
    );
  }

  Future<String> _query() async {
    final allRows = await dbHelper.queryAllRows();
    print('query all rows:');
    allRows.forEach((row) => print(row));
  }
}
