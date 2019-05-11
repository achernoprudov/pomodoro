import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
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
              child: ListView.builder(
                itemCount: 40,
                itemExtent: 40,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 40,
                    child: Text('$index min'),
                  );
                },
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
