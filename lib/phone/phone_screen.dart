import 'package:flutter/material.dart';
import 'package:interviewtest/widget/card_info.dart';

class Phone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 10),
          child: Center(
            child: CardInfo(),
          ),
        )
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
          flex: 4,
          child: Container(
            color: Color.fromRGBO(249, 249, 249, 1),
          ),
        )
      ],
    );
  }
}
