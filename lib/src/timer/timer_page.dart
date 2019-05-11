import 'package:flutter/material.dart';

class TimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      color: Colors.red,
      child: Column(
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.white,
            child: Center(
              child: Text('4:31', style: textTheme.display4.copyWith(color: Colors.black),),
            ),
          ),
          Expanded(
            child: Center(
              child: RaisedButton(
                  color: Colors.white,
                  child: Text('Stop timer',
                      style: textTheme.headline.copyWith(color: Colors.black)),
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40))),
            ),
          )
        ],
      ),
    );
  }
}
