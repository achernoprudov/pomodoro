import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pomodoro/src/home_view_model.dart';
import 'package:pomodoro/src/picker/start_timer_button.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:pomodoro/src/picker/scale/scale_widget.dart';

class PickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    return Stack(
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              color: Colors.red,
              height: 300,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
            Expanded(
              child: ScaleWidget(
                itemsCount: 30,
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Text(
            'Pomodoro',
            style: textTheme.display3.copyWith(color: Colors.white),
          ),
        ),
        Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 50),
            child: StartTimerButton())
      ],
    );
  }
}
