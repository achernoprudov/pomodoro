import 'package:flutter/material.dart';
import 'package:pomodoro/src/home_container_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomodoro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeContainerPage(),
    );
  }
}
