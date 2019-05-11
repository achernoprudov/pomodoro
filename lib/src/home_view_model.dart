import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends Model {
  var pageController = PageController();

  int _timerValue = 0;

  set timerValue(int value) {
    _timerValue = value;
    notifyListeners();
  }

  int get timerValue => _timerValue;

  void startTimer() {
    pageController.nextPage(
        curve: ElasticInOutCurve(), duration: Duration(microseconds: 400));
  }
}
