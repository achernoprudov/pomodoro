import 'dart:async';

import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends Model {

  final _timerMultiplier = 5;
  final _pageChangeDuration = Duration(milliseconds: 600);
  final _pageChangeCurve = Curves.fastOutSlowIn;

  var pageController = PageController();
  Stream<int> secondsStream = Stream.empty();
  //TODO public getter with formatted seconds

  StreamSubscription<int> _secondsListener;
  int _timerValue = 0;

  set timerValue(int value) {
    _timerValue = value;
    notifyListeners();
  }

  int get timerValue => _timerValue;

  void startTimer() {
    pageController.nextPage(
        duration: _pageChangeDuration, curve: _pageChangeCurve);
    _updateSecondsStream();
    notifyListeners();
  }

  void stopTimer() {
    _removeSecondsListener();
    pageController.previousPage(
        duration: _pageChangeDuration, curve: _pageChangeCurve);
  }

  void _updateSecondsStream() {
      var seconds = _timerValue * _timerMultiplier;
    secondsStream = Stream.periodic(Duration(seconds: 1), (timePassed) => seconds -  timePassed)
        .asBroadcastStream();
    _removeSecondsListener();
    _secondsListener = secondsStream.listen((seconds) {
      if (seconds == 0) {
        HapticFeedback.vibrate();
        stopTimer();
      }
    });
  }

  void _removeSecondsListener() {
    if (_secondsListener != null) {
      _secondsListener.cancel();
      _secondsListener = null;
    }
  }
}
