//* if you want to use GetX state management should extends this class with GetxController

class CounterModel {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
  }
}
