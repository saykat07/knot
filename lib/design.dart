import 'package:flutter/material.dart';
class Saykat extends StatelessWidget {
  final String girls;
   Saykat (this.girls);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text (
        girls,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
        
      ),);
  }
}