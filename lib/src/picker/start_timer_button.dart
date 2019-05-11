import 'package:flutter/material.dart';
import 'package:pomodoro/src/home_view_model.dart';
import 'package:scoped_model/scoped_model.dart';

class StartTimerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return ScopedModelDescendant<HomeViewModel>(
          builder: (context, _, viewModel) {
            return AnimatedOpacity(
              curve: ElasticInOutCurve(),
              duration: Duration(microseconds: 400),
              opacity: viewModel.timerValue == 0 ? 0 : 1,
              child:  RaisedButton(
                  onPressed: viewModel.startTimer,
                  color: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  child: Text(
                    'Start timer',
                    style: textTheme.headline.copyWith(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
            );
          },
        );
  }
}