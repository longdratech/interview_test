import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key key, this.title, this.content}) : super(key: key);

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(title, style: TextStyle(color: Colors.black45, fontSize: 18)),
        Text(content, style: TextStyle(color: Colors.black, fontSize: 24)),
      ],
    );
  }
}
