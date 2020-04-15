import 'package:flutter/material.dart';

class InfoPerson extends StatelessWidget {
  final String address;
  final String title;

  InfoPerson({this.address, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(title, style: TextStyle(color: Colors.black45, fontSize: 18)),
        Text(address, style: TextStyle(color: Colors.black, fontSize: 24)),
      ],
    );
  }
}
