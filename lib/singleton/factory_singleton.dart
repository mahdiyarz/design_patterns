import 'package:flutter/foundation.dart';

class FactorySingleton {
  //* eager instantiation
  static final FactorySingleton _instance = FactorySingleton._internal();

  //* generative constructor called internally
  FactorySingleton._internal() {
    //? a simple test for creation
    debugPrint('Creating an instance of BasicSingleton');
  }

  //* factory constructor, should return same instance
  factory FactorySingleton() {
    return _instance;
  }
}

class MyClass {
  FactorySingleton singleton = FactorySingleton();
}
