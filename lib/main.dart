import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//extends inherit from another class here its inbuilt flutter
class MyApp extends StatelessWidget {
  var questionindex = 0;
  void answers() {
    questionindex = questionindex + 1;
    print(questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your fav color',
      'what\'s your fav animal?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Myappp bar'),
          ),
          body: Column(
            children: [
              Text(
                questions[questionindex],
              ),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answers,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('answer 2 choosen'),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer 3 choosen');
                },
              ),
            ],
          )),
    );
  }
}
