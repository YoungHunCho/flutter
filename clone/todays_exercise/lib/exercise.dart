import 'package:flutter/material.dart';

class Exercise extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child:Text("운동페이지", style: TextStyle(color: Colors.blue,fontSize: 30.0),),
      ),
    );
  }
}