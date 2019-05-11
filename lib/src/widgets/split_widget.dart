import 'package:flutter/material.dart';

/// Split widget into two parts
class SplitWidget extends StatelessWidget {
  final Widget topChild;
  final Color topChildColor;
  final double topChildHeight;

  final Widget bottomChild;
  final Color bottomChildColor;

  const SplitWidget(
      {Key key,
      @required this.topChild,
      @required this.topChildColor,
      this.topChildHeight = 300,
      @required this.bottomChild,
      @required this.bottomChildColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: topChild,
          color: topChildColor,
          height: topChildHeight,
        ),
        Expanded(
          child: Container(
            child: bottomChild,
            color: bottomChildColor,
          ),
        )
      ],
    );
  }
}
