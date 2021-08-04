import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resethandler;

  Result(this.resultScore, this.resethandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'U ARE Awesome ';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else {
      resultText = 'BAD';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          // ignore: deprecated_member_use
          TextButton(
            child: Text('Restart Quiz!'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: resethandler,
          ),
        ],
      ),
    );
  }
}
