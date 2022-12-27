import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({key});

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 3},
        {'text': 'Black', 'score': 4},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Lion', 'score': 2},
        {'text': 'Cat', 'score': 3},
        {'text': 'Snake', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favourite dish?',
      'answers': [
        {'text': 'Pasta', 'score': 1},
        {'text': 'Pizza', 'score': 2},
        {'text': 'Burger', 'score': 3},
        {'text': 'Rice', 'score': 4}
      ]
    }
  ];

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      _totalScore = _totalScore + score;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }
  }

  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            // ignore: prefer_const_constructors
            : Result(
                resultScore: _totalScore,
              ),
      ),
    );
  }
}
