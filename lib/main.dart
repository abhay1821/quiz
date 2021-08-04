import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

//extends inherit from another class here its inbuilt flutter
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questiontext': 'what\'s your fav color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'White', 'score': 2},
        {'text': 'Green', 'score': 1},
      ],
    },
    {
      'questiontext': 'what\'s your fav animal?',
      'answers': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 2},
        {'text': 'Pig', 'score': 1},
      ],
    },
    {
      'questiontext': 'what\'s your fav ice-cream',
      'answers': [
        {'text': 'Vanilla', 'score': 10},
        {'text': 'Tooti-Footi', 'score': 5},
        {'text': 'Chocolate', 'score': 2},
        {'text': 'Orange', 'score': 1},
      ],
    },
  ];
  var _questionindex = 0;
  var _totalscore = 0;
  void _resetQuiz() {
    setState(() {
      _questionindex = 0;
      _totalscore = 0;
    });
  }

  @override
  // ignore: override_on_non_overriding_member
  void _answersQuestion(int score) {
    _totalscore += score;
    //setstate is a fn used to rerender the interface or it call build again

    setState(() {
      //update
      _questionindex = _questionindex + 1;
    });
    print(_questionindex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Myappp bar'),
        ),
        body: _questionindex < _questions.length
            ? Quiz(
                answersQuestion: _answersQuestion,
                questionindex: _questionindex,
                questions: _questions,
              )
            : Result(_totalscore, _resetQuiz),
      ),
    );
  }
}
