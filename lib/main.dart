import 'package:flutter/material.dart';
import './design.dart';


//void main(){
//runApp(Knot(),);
//}
void main() => runApp(Knot());
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
      appBar: AppBar(title:Text('Knot') ,),
      body: Column(children: [
      Saykat(boishak[assel],),
      RaisedButton(child: Text('answer 1'), onPressed: anara),
      RaisedButton(child: Text('answer 2'), onPressed: anara),
      RaisedButton(child: Text('answer 3'), onPressed: anara),
      ],),
    ),);
  }
}