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
    var boishak=[
      {'question':'what is your name?',
        'answer':['boishak','anara','assel','saykat'],
      },
      {'question':'what is your favorite place?',
        'answer':['America','Canada','Australia','china'],
      },
      {'question':'what is your app name?',
        'answer':['knoter','knot','tweeter','twwetify'],
      }
    ]; 
    return MaterialApp(home:Scaffold(
      appBar: AppBar(title: Text('knot'),),
      body: Column(children: [
      Saykat(
        boishak[assel]['question']), 
       ...(boishak[assel]['answer']as List <String>).map((olive){
         return Olive(anara,olive) ;
       } ).toList()
      
      ],),
    ),);

  }


}
    
