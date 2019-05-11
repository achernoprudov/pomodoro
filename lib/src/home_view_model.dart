import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends Model {
  final _pageChangeDuration = Duration(milliseconds: 600);
  final _pageChangeCurve = Curves.fastOutSlowIn;

  var pageController = PageController();

  int _timerValue = 0;

  set timerValue(int value) {
    _timerValue = value;
    notifyListeners();
  }

  int get timerValue => _timerValue;

  void startTimer() {
    pageController.nextPage(
        duration: _pageChangeDuration, curve: _pageChangeCurve);
  }

  void stopTimer() {
    pageController.previousPage(
        duration: _pageChangeDuration, curve: _pageChangeCurve);
  }
}
