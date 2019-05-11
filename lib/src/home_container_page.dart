import 'package:flutter/material.dart';
import 'package:pomodoro/src/picker_page.dart';

class HomeContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: PageView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return PickerPage();
            default:
              return Text('error');
          }
        },
      ),
    );
  }
}
