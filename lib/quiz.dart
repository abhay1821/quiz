import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionindex;
  final answersQuestion;

  Quiz(
      {required this.questions,
      required this.answersQuestion,
      required this.questionindex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          //as sting addded due to error
          questions[questionindex]['questiontext'] as String,
        ),
        //accessing the widgets without hardcoding it
        //here accessing list of widgets by mapping
        ...(questions[questionindex]['answers'] as List<Map<String, Object>>)
            //acessing the questions with key['answers'] with list of stings
            .map((answer) {
          return Answers(() => answersQuestion(answer['score']),
              answer['text'].toString());
        }).toList() //convert value of map to list
      ],
    );
  }
}
