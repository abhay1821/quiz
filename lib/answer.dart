import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHandler; //selecthandlers has to be pointer
  final String answerText;

  Answers(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
