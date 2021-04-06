import 'package:flutter/material.dart';
import './color.dart';
import './design.dart';
class Organize extends StatelessWidget {
  final List<Map<String,Object>>question;
  final int problem;
  final Function type;
  
  Organize({@required this.question,@required this.type,@required this.problem});
  @override
  Widget build(BuildContext context) {
    return  Column(
                  children: [
                    Input(question[problem]['ques']),
                    ...(question[problem]['ans'] as List<String>).map((output) {
                      return Output(type, output);
                    }).toList()
                  ],
                );
  }
}