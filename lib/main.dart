import 'package:clone_instagram/screens/MainScreen.dart';
import 'package:clone_instagram/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black54),
      home: MainScreen(),
    );
  }
}
