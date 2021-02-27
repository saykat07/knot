import 'package:flutter/material.dart';
class Olive extends StatelessWidget {
  final Function button;
   Olive(this.button);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:RaisedButton(
       //width: double.infinity,
        color: Colors.lightBlue,
        child: Text('answer A'),
         onPressed: button
      ), 
    );
  }
}