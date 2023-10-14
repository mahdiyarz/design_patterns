import 'package:flutter/foundation.dart';

abstract class Singleton {
  Singleton._privateConstructor();
}

class SequenceGenerator extends Singleton {
  SequenceGenerator._privateConstructor() : super._privateConstructor();

  static final SequenceGenerator _instance =
      SequenceGenerator._privateConstructor();

  factory SequenceGenerator() {
    debugPrint('Create new instance of SequenceGenerator');
    return _instance;
  }

  int _counter = 0;

  int getNextNumber() {
    _counter = _counter++;
    return _counter;
  }

  int getCurrentNumber() {
    return _counter;
  }
}
