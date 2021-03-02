import 'package:flutter/material.dart';
class Olive extends StatelessWidget {
  final Function button;
  final String buttonText;
   Olive(this.button,this.buttonText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:RaisedButton(
       //width: double.infinity,
       textColor: Colors.white,
        color: Colors.lightBlue,
        child: Text(buttonText),
         onPressed: button
      ), 
    );
  }
}