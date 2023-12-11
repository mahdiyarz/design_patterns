import 'package:design_patterns/MVC/counter_controller.dart';
import 'package:design_patterns/MVC/counter_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterView(model: counterController.model),
    );
  }
}
