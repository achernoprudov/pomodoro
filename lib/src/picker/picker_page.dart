import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pomodoro/src/picker/picker_page_header.dart';
import 'package:pomodoro/src/picker/start_timer_button.dart';
import 'package:pomodoro/src/widgets/scale/scale_widget.dart';
import 'package:pomodoro/src/widgets/split_widget.dart';

class PickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplitWidget(
      topChildColor: Colors.red,
      topChild: PickerPageHeader(),
      bottomChildColor: Colors.white,
      bottomChild: Stack(
        children: <Widget>[
          ScaleWidget(
            itemsCount: 30,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 50),
            child: StartTimerButton(),
          ),
        ],
      ),
    );
  }
}
