import 'package:flutter/material.dart';
import 'package:interviewtest/animation/swipe_card.dart';
import 'package:interviewtest/widget/card_info.dart';

class ListCard extends StatefulWidget {
  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  List<String> welcomeImages = [
    "https://bit.ly/2xuJx1C",
    "https://bit.ly/2K6iqN4",
    "https://bit.ly/2z5DrW5",
    "https://bit.ly/2VIMT9x",
    "https://bit.ly/3eoVDKk",
    "https://bit.ly/34DcQLr",
  ];

  List<String> address = [
    "69 Nguyen Gia Tri",
    "36 Le THi Rieng",
    "58 CMT8",
    "78 Cong lo",
    "12 Ly Chinh Thang",
    "12 Le Thanh Ton",
  ];
  List<int> phone = [
    0988196399,
    0337552146,
    0988276660,
    0345435835,
    0914156780,
    0123456789,
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller;
    return  TinderSwapCard(
      orientation: AmassOrientation.BOTTOM,
      totalNum: 6,
      stackNum: 3,
      swipeEdge: 4.0,
      maxWidth: MediaQuery.of(context).size.width * 0.9,
      maxHeight: MediaQuery.of(context).size.width * 0.9,
      minWidth: MediaQuery.of(context).size.width * 0.8,
      minHeight: MediaQuery.of(context).size.width * 0.8,
      cardBuilder: (context, index) => CardInfo(
        urlImage: welcomeImages[index],
        address: address[index],
        phoneNumber: phone[index],
      ),
      cardController: controller = CardController(),
      swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
        /// Get swiping card's alignment
        if (align.x < 0) {
          //Card is LEFT swiping
        } else if (align.x > 0) {
          //Card is RIGHT swiping
        }
      },
      swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
        /// Get orientation & index of swiped card!
      },
    );
  }
}
