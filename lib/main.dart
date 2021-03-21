import 'package:flutter/material.dart';
import 'package:knot/color.dart';
import 'package:knot/design.dart';

void main(){
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
  final question = const[
    {'ques':'what\'t are you doing again?',
      'ans': ['practice','self learning','remebering','joking']
    },
    {'ques':'what is your favorite place?',
        'ans':['America','Canada','Australia','china'],
    },
    {'ques':'what is your app name?',
        'ans':['knoter','knot','tweeter','twwetify'],
   },
  ];
  var problem=0;
  void type(){
    setState(() {
      problem=problem+1;
      if (problem<question.length){
        print('Hello!Fill up more');

      }else{
        print('Finished all!');
      }
    });
  }
  Widget build (BuildContext context){
    return MaterialApp(home: Scaffold(
   appBar: AppBar(title: Text('knot'),),
   body: problem<question.length?Column(children: [
     Input(
       question[problem]['ques']
     ), 
     ...(question[problem]['ans'] as List <String>) .map((output){
       return Output(type, output);
     }).toList()
   ],): Center(child:Text('Well done!'))
    ),);
  }
}