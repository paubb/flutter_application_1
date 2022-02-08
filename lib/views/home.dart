import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/palette.dart';
import 'package:flutter_application_1/views/bottomNavigationBar/first.dart';
import 'package:flutter_application_1/views/bottomNavigationBar/fourth.dart';
import 'package:flutter_application_1/views/bottomNavigationBar/second.dart';
import 'package:flutter_application_1/views/bottomNavigationBar/third.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final _children = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    FourthPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        // Here we hide the labels on the ui
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Item1",
            backgroundColor: Palette.coral,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Item2",
            backgroundColor: Palette.teaGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: "Item3",
            backgroundColor: Palette.palePurplePantone,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Item4",
            backgroundColor: Palette.rhythm,
          )
        ],
      ),
    );
  }
}
