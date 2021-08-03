import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

//extends inherit from another class here its inbuilt flutter
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questiontext': 'what\'s your fav color?',
      'answers': ['Black', 'Red', 'White', 'Green'],
    },
    {
      'questiontext': 'what\'s your fav animal?',
      'answers': ['RAt', 'Rabbit', 'Lion', 'Tiger'],
    },
    {
      'questiontext': 'what\'s your fav ice-cream',
      'answers': ['Tootifooti', 'Mango', 'Chocolate', 'Vanilla'],
    },
  ];
  var _questionindex = 0;
  @override
  void _answers() {
    //setstate is a fn used to rerender the interface or it call build again

    setState(() {
      //update
      _questionindex = _questionindex + 1;
    });
    print(_questionindex);
    if (_questionindex < questions.length) {
      print('We have more questions..');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Myappp bar'),
        ),
        body: _questionindex < questions.length
            ? Column(
                children: [
                  Questions(
                    //as sting addded due to error
                    questions[_questionindex]['questiontext'] as String,
                  ),
                  //accessing the widgets without hardcoding it
                  //here accessing list of widgets by mapping
                  ...(questions[_questionindex]['answers'] as List<String>)
                      //acessing the questions with key['answers'] with list of stings
                      .map((answer) {
                    return Answers(_answers, answer);
                  }).toList() //convert value of map to list
                ],
              )
            : Center(
                child: Text('U did it'),
              ),
      ),
    );
  }
}
