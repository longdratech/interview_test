import 'package:flutter/material.dart';
import 'package:interviewtest/widget/address.dart';

class NavigationInfo extends StatefulWidget {
  NavigationInfo({this.address, this.phoneNumber, this.info});

  String address;
  final int phoneNumber;
  final String info;

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<NavigationInfo> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions;
  List<IconData> _listIcon;

  Color color = Colors.black38;

  @override
  void initState() {
    super.initState();
    _listIcon =[
      Icons.location_searching,
      Icons.calendar_today,
      Icons.map,
      Icons.phone,
      Icons.lock,
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      color = Colors.green;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _widgetOptions = [
      InfoPerson(title: "My address is ",address: "${widget.address}"),
      InfoPerson(title: "My phone is ",address: "${widget.phoneNumber}"),
      InfoPerson(title: "My info is ",address: "${widget.info}"),
      InfoPerson(title: "My image is ",address: "${widget.address}"),
      InfoPerson(title: "My name is ",address: "${widget.address}"),
    ];

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for(int i = 0; i < 5; i++)
          IconButton(
            icon: Icon(_listIcon[i], color: color),
            onPressed: () => _onItemTapped(i),
          )
      ],
    );
  }
}