import 'package:design_patterns/MVC/counter_model.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  final CounterModel model;
  const CounterView({required this.model, super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MVC Design Pattern'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('${widget.model.count}'),
          const SizedBox(height: 40),
          TextButton(
              onPressed: () {
                setState(() {
                  widget.model.increment();
                });
              },
              child: const Text('Increase')),
        ],
      ),
    );
  }
}
