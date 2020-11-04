import 'package:flutter/material.dart';
import 'package:todays_exercise/placeholder_widget.dart';
import 'package:todays_exercise/exercise.dart';
import 'package:todays_exercise/routine.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello world",
      home: HomeState(),
    );
  }
}


class HomeState extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<HomeState>{
  int selectedIdx = 0;
  final List<Widget> _children = [
    Exercise(),
    Routine(),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.cyan),
    PlaceholderWidget(Colors.black26),
    PlaceholderWidget(Colors.lightGreen),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onItemTapped,
        currentIndex: selectedIdx, // this will be set when a new tab is tapped

        // backgroundColor: Colors.grey,
        selectedItemColor: Colors.blue,
        selectedIconTheme: IconThemeData(color: Colors.blue, size: 30),
        unselectedItemColor: Colors.grey,

        //  fixedColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.fitness_center),
            label: '운동',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.all_inclusive),
            label: '루틴',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: '기록',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: '통계',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: '몸무게',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '설정',
          ),
        ],
      ),
      body: _children[selectedIdx],
    );
  }
  void onItemTapped(int index) {
    setState(() {
      selectedIdx = index;
    });
  }
}