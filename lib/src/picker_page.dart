import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pomodoro/src/interval_widget.dart';

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
              child: PageView.builder(
                itemCount: 30,
                scrollDirection: Axis.horizontal,
                pageSnapping: false,
                physics: PageScrollPhysics(), // TODO custom page scroll physics
                onPageChanged: (index) {
                  if (theme.platform == TargetPlatform.iOS) {
                    HapticFeedback.selectionClick();
                  }
                  
                },
                controller: PageController(viewportFraction: 0.1),
                itemBuilder: (_, index) => IntervalWidget(
                      interval: index,
                    ),
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
      ],
    );
  }
}
