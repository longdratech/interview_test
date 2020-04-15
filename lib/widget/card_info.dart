import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:interviewtest/widget/navigation_info.dart';

class CardInfo extends StatelessWidget {
  CardInfo({this.index, this.urlImage, this.address, this.phoneNumber, this.info});

  int index;
  final String urlImage;
  final String address;
  final String phoneNumber;
  final String info;

  @override
  Widget build(BuildContext context) {
    return _cardInfo(context);
  }

  Widget _cardInfo(context){
    return Stack(
      children: <Widget>[
        Card(
          elevation: 2,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(243, 243, 243, 1),
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: const BorderRadius.only(bottomRight:Radius.circular(10), bottomLeft: Radius.circular(10)),
                  ),
                  child: NavigationInfo(address: address, info: info, phoneNumber: phoneNumber),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 30,
          left: MediaQuery.of(context).size.width/4 + 10,
          child: _circleAvatar(context: context, urlImage: urlImage),
        )
      ],
    );
  }

  Widget _circleAvatar({@required BuildContext context, String urlImage}){
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width/3,
      height: MediaQuery.of(context).size.width/3,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black54,
        )
      ),
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.width/3,
        backgroundImage:
        NetworkImage(urlImage ?? 'https://via.placeholder.com/480'),
        backgroundColor: Colors.transparent,
      )
    );
  }
}


