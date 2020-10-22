import 'package:flutter/material.dart';

class Routine extends StatefulWidget{
  @override
  _RoutineState createState() => new _RoutineState();
}

class _RoutineState extends State<Routine>{


  int selected_type = 0;
  var TYPE = ["루틴", "운동"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 2,
      child: Scaffold(
        // backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          
          actions: <Widget>[
            InkWell(
              child: Text(""),
              onTap: (){
              },
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.all(12),
                child: Text("${TYPE[selected_type]} 추가하기", style: TextStyle(fontSize: 15, color: Colors.blue)),
              ),
              onTap: (){  
              },
            ),
          ],
          bottom: TabBar(
            onTap: onItemTapped,

            labelStyle: TextStyle(fontSize: 20,),
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "루틴",),
              Tab(text: "운동",),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Text("1"),
            Text("2"),
          ],
        )
      ),
    );
  }

  void onAddTapped(){

  }

  void onItemTapped(int index) {
    setState(() {
      selected_type = index;
    });
  }
}


class RoutineDetail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  }

}