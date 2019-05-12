import 'dart:async';

import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends Model {
  final _pageChangeDuration = Duration(milliseconds: 600);
  final _pageChangeCurve = Curves.fastOutSlowIn;

  var pageController = PageController();
  Stream<int> secondsStream = Stream.empty();

  StreamSubscription<int> _secondsListener;
  int _timerValue = 0;

  HomeViewModel() {}

  set timerValue(int value) {
    _timerValue = value;
    notifyListeners();
  }

  int get timerValue => _timerValue;

  void startTimer() {
    pageController.nextPage(
        duration: _pageChangeDuration, curve: _pageChangeCurve);
    var seconds = _timerValue * 60;
    var secondsStream = Stream.periodic(Duration(seconds: 1))
        .map((timePassed) => seconds - timePassed);
    _updateSecondsStream(secondsStream);
  }

  void stopTimer() {
    _removeSecondsListener();
    pageController.previousPage(
        duration: _pageChangeDuration, curve: _pageChangeCurve);
  }

  void _updateSecondsStream(Stream<int> secondsStream) {
    this.secondsStream = secondsStream.asBroadcastStream();
    _removeSecondsListener();
    _secondsListener = this.secondsStream.listen((seconds) {
      if (seconds == 0) {
        stopTimer();
      }
    });
    notifyListeners();
  }

  void _removeSecondsListener() {
    if (_secondsListener != null) {
      _secondsListener.cancel();
      _secondsListener = null;
    }
  }
}
