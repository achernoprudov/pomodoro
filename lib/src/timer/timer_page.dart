import 'package:flutter/material.dart';
import 'package:pomodoro/src/home_view_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:pomodoro/src/widgets/timer_button.dart';

class TimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      color: Colors.red,
      child: Column(
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.white,
            child: Center(
              //TODO make timer
              child: Text(
                '4:31',
                style: textTheme.display4.copyWith(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: Center(
            child: ScopedModelDescendant<HomeViewModel>(
                rebuildOnChange: false,
                builder: (context, _, viewModel) {
                  return TimerButton(
                    title: 'Stop timer',
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    onPressed: viewModel.stopTimer,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
