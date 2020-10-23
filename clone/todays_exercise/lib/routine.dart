import 'package:flutter/material.dart';

class Routine extends StatefulWidget{
  @override
  _RoutineState createState() => new _RoutineState();
}

class _RoutineState extends State<Routine>{
  int selectedType = 0;
  final List<String> _type = ["루틴", "운동"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // backgroundColor: Colors.red,
        appBar: AppBar(
          // shape: Border(top: BorderSide(color: Colors.red),bottom: BorderSide(color: Colors.red)),
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
                child: Text("${_type[selectedType]} 추가하기", style: TextStyle(fontSize: 15, color: Colors.blue)),
              ),
              onTap: (){  
              },
            ),
          ],
          bottom: DecoratedTabBar(
            tabBar: TabBar(
              onTap: onItemTapped,
              labelStyle: TextStyle(fontSize: 20,),
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
                
              tabs: [
                Tab(text: _type[0]),
                Tab(text: _type[1]),
              ],
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 30.5,
                ),
                bottom: BorderSide(
                  color: Colors.red,
                  width: 1.5,
                )
              )
            ),
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

  void onItemTapped(int index) {
    setState(() => selectedType = index);
  }
}

class DecoratedTabBar extends StatelessWidget implements PreferredSizeWidget{
  DecoratedTabBar({@required this.tabBar, @required this.decoration});

  final TabBar tabBar;
  final BoxDecoration decoration;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Positioned(child: Container(decoration: decoration,)),
        tabBar,
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => tabBar.preferredSize;

}

class RoutineDetail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  }

}

class ExerciseDetail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    
  }

}