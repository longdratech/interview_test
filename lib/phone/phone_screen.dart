import 'package:flutter/material.dart';
import 'package:interviewtest/widget/card_info.dart';
import 'package:interviewtest/widget/swipe_card_list.dart';

class PhoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        ListCard(),
      ],
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
