import 'package:flutter/material.dart';
import 'package:flutter_ui_e_learning_course/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
     home: HomeScreen(),
    );
  }
}
