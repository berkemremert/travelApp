import 'package:flutter/material.dart';
import 'dart:math';

class ArrowTextWidget extends StatelessWidget {
  final String text;

  ArrowTextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    List<String> links = [
      'https://img.uxwing.com/wp-content/themes/uxwing/download/arrow-direction/swirl-arrow-bottom-left-icon.png',
      'https://static.thenounproject.com/png/1566885-200.png',
      'https://img.uxwing.com/wp-content/themes/uxwing/download/arrow-direction/swirl-arrow-bottom-icon.png',
    ];

    return Row(
      children: [
        Container(width: 20,),
        Image.network(
          links[Random().nextInt(links.length)],
          height: 240,
          width: 150,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              text,
              style: TextStyle(fontSize: 20),
              overflow: TextOverflow.visible,
            ),
          ),
        ),
      ],
    );
  }
}
