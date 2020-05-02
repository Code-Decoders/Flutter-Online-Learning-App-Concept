import 'package:flutter/material.dart';
import 'package:learning/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xffFFDCD6)
      ),
      home: Home(),
    );
  }
}