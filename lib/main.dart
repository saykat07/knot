import 'package:flutter/material.dart';
import './design.dart';
import './color.dart';
void main() {
  runApp(Knot(),);
}
class Knot extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // 
    return KnotState();
  }

}
class KnotState extends State<Knot>{
  var assel=0;
  void anara(){
    setState(() {
      assel=assel+1;
    });
    print(assel);
  }
  Widget build (BuildContext context){
    var boishak=['who is she?','another lame question']; 
    return MaterialApp(home:Scaffold(
      appBar: AppBar(title: Text('knot'),),
      body: Column(children: [
      Saykat(boishak[assel]), 
      Olive(anara),
      Olive(anara),
      Olive(anara),
      ],),
    ),);

  }


}
    
