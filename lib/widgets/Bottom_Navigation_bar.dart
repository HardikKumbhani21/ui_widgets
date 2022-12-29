import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int pageSelected = 0;
  List<Widget> screens = [
    Center(
        child: Text("1", style: TextStyle(color: Colors.black, fontSize: 20))),
    Center(
        child: Text("2", style: TextStyle(color: Colors.black, fontSize: 20))),
    Center(
        child: Text("3", style: TextStyle(color: Colors.black, fontSize: 20))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageSelected,
        onTap: (value) {
          setState(
            () {
              pageSelected = value;
            },
          );
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: screens[pageSelected],
    );
  }
}
