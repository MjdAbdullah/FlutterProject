import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'views/ExploerScreen.dart';
import 'views/FavoriteScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;
  final screen = [
    ExploreScreen(),
    FavoriteScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: currentIndex,
          children: screen
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        backgroundColor: Colors.pink,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        iconSize: 35,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) => setState(() => {
          currentIndex = index,
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_outlined,
              //color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.favorite,
                //color: Colors.white
            ),
            label: '',
          )
        ],
      ),
    );
  }
}
