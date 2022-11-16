import 'package:bottom_nav_bar/Screens/Screen1.dart';
import 'package:bottom_nav_bar/Screens/Screen2.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  int screenIndex;
  HomeScreen({super.key, required this.screenIndex});

  @override
  State<HomeScreen> createState() => _HomeScreenState(screenIndex: screenIndex);
}

class _HomeScreenState extends State<HomeScreen> {
  int screenIndex;
  _HomeScreenState({ required this.screenIndex});
  @override
  Widget build(BuildContext context) {
    List<String> AppBarList = [
      "Screen1",
      "Screen2",
      "Screen3"
    ];
    List Screens = [
      
      screen1(),
      screen2(),
    ];

    return Scaffold(



      
      appBar: AppBar(
        title: Text(AppBarList[screenIndex]),
      ),





      body:Screens[screenIndex],






      
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: screenIndex,
          onTap: (int currentIndex) {
            setState(() {
              screenIndex = currentIndex;
            });
          },
          items: [
            // index 0
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "My Profile"),

            // index 1
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_rounded),
                label: "Notifications"),


            // index 2    
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_rounded),
                label: "exhibitor_app Global 2022"),
          ]),




    );
  }
}
