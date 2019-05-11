import 'package:flutter/material.dart';

class ScaleItemWidget extends StatelessWidget {
  final int interval;

  const ScaleItemWidget({Key key, this.interval}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: Stack(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 8,
                width: 1,
              ),
              Container(
                color: Colors.black,
                height: 4,
                width: 1,
              ),
              Container(
                color: Colors.black,
                height: 6,
                width: 1,
              )
            ],
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 10),
            child: Text('$interval'),
          )
        ],
      ),
    );
  }
}
