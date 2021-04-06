import 'package:flutter/material.dart';
import './organize1.dart';
import './organize.dart';

void main() {
  runApp(_Knot());
}

class _Knot extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //
    return _KnotState();
  }
}

class _KnotState extends State<_Knot> {
  final _question = const [
    {
      'ques': 'what\'s your name?',
      'ans': ['A', 'B', 'C', 'D'],
    },
    {
      'ques': 'what is your favorite place?',
      'ans': ['America', 'Canada', 'Australia', 'china'],
    },
    {
      'ques': 'what is your app name?',
      'ans': ['knoter', 'knot', 'tweeter', 'twwetify'],
    },
  ];
  var _problem = 0;
  void _type() {
    setState(() {
      _problem = _problem + 1;
    });
    if (_problem < _question.length) {
      print('Bingo!more question');
    } else {
      print('No more question');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Knot'),
          ),
          body: _problem < _question.length
              ? Organize(type: _type, problem: _problem, question: _question)
              :Organize1()
              ),
    );
  }
}
