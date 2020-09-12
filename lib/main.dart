import 'package:flutter/material.dart';
import 'package:tiktokui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tiktok simple ui',
      home: Home(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white,displayColor: Colors.white)
      ),
    );
  }
}