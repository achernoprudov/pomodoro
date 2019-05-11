import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
        return Text(
          '4:31',
          style: textTheme.display4.copyWith(color: Colors.black),
    );
  }
}
