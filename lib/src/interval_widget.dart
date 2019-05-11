import 'package:flutter/material.dart';

class IntervalWidget extends StatelessWidget {
  final int interval;

  const IntervalWidget({Key key, this.interval}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      child: Stack(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.black,
                height: 5,
                width: 1,
              ),
              Container(
                color: Colors.black,
                height: 2,
                width: 2,
              ),
              Container(
                color: Colors.black,
                height: 5,
                width: 1,
              )
            ],
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 5),
            child: Text('$interval'),
          )
        ],
      ),
    );
  }
}
