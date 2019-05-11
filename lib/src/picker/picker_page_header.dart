import 'package:flutter/material.dart';

/// Header contains app name and pomodoro timer indicator
class PickerPageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Text(
            'Pomodoro',
            style: Theme.of(context)
                .textTheme
                .display3
                .copyWith(color: Colors.white),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
            size: 50,
          ),
        ),
      ],
    );
  }
}
