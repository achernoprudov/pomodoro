import 'package:flutter/material.dart';
import 'package:pomodoro/src/home_view_model.dart';
import 'package:pomodoro/src/timer/timer_widget.dart';
import 'package:pomodoro/src/widgets/split_widget.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:pomodoro/src/widgets/timer_button.dart';

class TimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplitWidget(
      topChildColor: Colors.white,
      topChild: Center(
        child: TimerWidget(),
      ),
      bottomChildColor: Colors.red,
      bottomChild: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(bottom: 50),
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
    );
  }
}
