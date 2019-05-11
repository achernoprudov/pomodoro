import 'package:flutter/material.dart';

class TimerButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback onPressed;

  const TimerButton(
      {Key key,
      @required this.title,
      @required this.backgroundColor,
      @required this.foregroundColor,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return RaisedButton(
        color: backgroundColor,
        child: Text(title,
            style: textTheme.headline.copyWith(color: foregroundColor)),
        onPressed: onPressed,
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)));
  }
}
