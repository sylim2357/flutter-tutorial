import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it';

    if (this.resultScore <= 8) {
      resultText = 'You are likeable!';
    } else if (this.resultScore <= 16) {
      resultText = 'You are .. strange';
    } else {
      resultText = 'You are so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          this.resultPhrase,
          style:
              TextStyle(fontSize: 36, fontWeight: FontWeight.bold), //TextStyle
          textAlign: TextAlign.center,
        ),
        FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: this.resetHandler)
      ]), //Text
    ); //Center
  }
}
