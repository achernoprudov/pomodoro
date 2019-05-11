import 'package:flutter/material.dart';
import 'package:pomodoro/src/home_view_model.dart';
import 'package:pomodoro/src/widgets/timer_button.dart';
import 'package:scoped_model/scoped_model.dart';

class StartTimerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<HomeViewModel>(
      builder: (context, _, viewModel) {
        return AnimatedOpacity(
            curve: ElasticInOutCurve(),
            duration: Duration(microseconds: 400),
            opacity: viewModel.timerValue == 0 ? 0 : 1,
            child: TimerButton(
              title: 'Start timer',
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              onPressed: viewModel.startTimer,
            ));
      },
    );
  }
}
