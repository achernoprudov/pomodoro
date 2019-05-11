import 'package:flutter/material.dart';
import 'package:pomodoro/src/home_container_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomodoro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Fjalla',
      ),
      home: HomeContainerPage(),
    );
  }
}
