import 'package:flutter/material.dart';
import 'package:pomodoro/src/home_view_model.dart';
import 'package:scoped_model/scoped_model.dart';

class TimerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return ScopedModelDescendant<HomeViewModel>(
      builder: (context, _, viewModel) {
        return StreamBuilder(
          stream: viewModel.secondsStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Text('loading');
            }
            return Text(
              '${snapshot.data}',
              style: textTheme.display4.copyWith(color: Colors.black),
            );
          },
        );
      },
    );
  }
}
