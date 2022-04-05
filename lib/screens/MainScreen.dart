import 'package:clone_instagram/screens/select_image_screen.dart';
import 'package:flutter/material.dart';
import 'package:clone_instagram/screens/add_photo_screen.dart';
import 'package:clone_instagram/screens/farvorite_screen.dart';
import 'package:clone_instagram/screens/person_scrren.dart';
import 'package:clone_instagram/screens/search_screen.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  List<Widget> lstWidget = const [
    HomeScreen(),
    SearchScreen(),
    AddPhotoScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: lstWidget[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: (index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SelectImageScreen()),
            );
          }
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
                color: Colors.black54,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black54,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_rounded,
                color: Colors.black54,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black54,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black54,
              ),
              label: ''),
        ],
      ),
    );
  }
}
