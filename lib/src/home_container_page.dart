import 'package:flutter/material.dart';
import 'package:pomodoro/src/home_view_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:pomodoro/src/picker/picker_page.dart';
import 'package:pomodoro/src/timer/timer_page.dart';

class HomeContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ScopedModel(
      model: HomeViewModel(),
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return PickerPage();
            case 1:
              return TimerPage();
            default:
              return Text('error');
          }
        },
      ),
    ));
  }
}
