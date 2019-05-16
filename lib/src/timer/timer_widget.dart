import 'package:flutter/material.dart';
import 'package:pomodoro/src/home_view_model.dart';
import 'package:scoped_model/scoped_model.dart';

class TimerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var textStyle = textTheme.display4.copyWith(color: Colors.black);
    return ScopedModelDescendant<HomeViewModel>(
      builder: (context, _, viewModel) {
        return StreamBuilder(
          stream: viewModel.secondsStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Text(
                '00:00',
                style: textStyle,
              );
            }
            return Text(
              '${snapshot.data}',
              style: textStyle,
            );
          },
        );
      },
    );
  }
}
