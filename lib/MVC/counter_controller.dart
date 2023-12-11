import 'package:design_patterns/MVC/counter_model.dart';

class CounterController {
  late final CounterModel _model;

  CounterController() {
    _model = CounterModel();
  }

  CounterModel get model => _model;
}
