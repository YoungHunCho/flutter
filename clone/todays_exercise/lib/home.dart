import 'package:flutter/material.dart';


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
            icon: new Icon(Icons.account_circle),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.play_circle_filled),
            label: 'Home1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Home2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Home3',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.save),
          //   label: 'Home4',
          // )
        ],
      ),
    );
  }
  void onItemTapped(int index) {
    setState(() {
      selectedIdx = index;
    });
  }
}