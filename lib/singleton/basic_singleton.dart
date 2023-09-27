import 'package:flutter/foundation.dart';

class BasicSingleton {
  static BasicSingleton? _instance;

  //* create private constructor
  BasicSingleton._internal() {
    //? a simple test for creation
    debugPrint('Creating an instance of BasicSingleton');
  }

  //* lazy instantiation
  static BasicSingleton? get instance {
    _instance ??= BasicSingleton._internal();
    return _instance;
  }
}

class MyClass {
  BasicSingleton singleton = BasicSingleton.instance!;
}
