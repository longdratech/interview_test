import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({this.address, this.phoneNumber, this.info});

  final String address;
  final int phoneNumber;
  final String info;

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<CustomTabBar> {
  int _selectedIndex = 0;
   List<Widget> _widgetOptions = <Widget>[
     Column(
       children: <Widget>[
         Text('My phone is', style: TextStyle(color: Colors.black45, fontSize: 18)),
         Text('My address is', style: TextStyle(color: Colors.black, fontSize: 24)),
       ],
     ),
    Column(
      children: <Widget>[
        Text('My phone is', style: TextStyle(color: Colors.black45, fontSize: 18)),
        Text('My address is', style: TextStyle(color: Colors.black, fontSize: 24)),
      ],
    ), //OrderPage
    Column(
      children: <Widget>[
        Text('My info is', style: TextStyle(color: Colors.black45, fontSize: 18)),
        Text('My address is', style: TextStyle(color: Colors.black, fontSize: 24)),
      ],
    ),
    Column(
      children: <Widget>[
        Text('My caculator is', style: TextStyle(color: Colors.black45, fontSize: 18)),
        Text('My address is', style: TextStyle(color: Colors.black, fontSize: 24)),
      ],
    ),
    Column(
      children: <Widget>[
        Text('My lock is', style: TextStyle(color: Colors.black45, fontSize: 18)),
        Text('My address is', style: TextStyle(color: Colors.black, fontSize: 24)),
      ],
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _widgetOptions.elementAt(_selectedIndex),

          ],
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_searching),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text("")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text("")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock),
            title: Text(""),
          ),
        ],
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
