import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //questionText will not change once input data is received.
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
      ), //Text
    ); //Container
  }
}
