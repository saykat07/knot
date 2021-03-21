import 'package:flutter/material.dart';
class Output extends StatelessWidget {
  final Function print;
  final String reddit;
  Output(this.print,this.reddit);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.indigo)
        ),
      child: Text(
        reddit,
        style:TextStyle(color:Colors.orange)
      ),
      onPressed:print ,
      ),
      
    );
  }
}