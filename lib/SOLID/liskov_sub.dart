import 'package:flutter/foundation.dart';

//! BAD SYNTAX

abstract class Vehicle {
  void refuel();
  void move();
}

class ElectricCar extends Vehicle {
  @override
  void refuel() {
    debugPrint('Charging the battery...');
  }

  @override
  void move() {
    debugPrint('Moving...');
  }
}

class PetrolCar extends Vehicle {
  @override
  void refuel() {
    debugPrint('Refilling the petrol...');
  }

  @override
  void move() {
    debugPrint('Moving...');
  }
}

//* GOOD SYNTAX

abstract class IVehicle {
  void move();
}

abstract class FuelVehicle extends IVehicle {
  void refuel();
}

abstract class ElectricVehicle extends IVehicle {
  void charge();
}

class MyElectricCar extends ElectricVehicle {
  @override
  void charge() {
    debugPrint('Charging the battery...');
  }

  @override
  void move() {
    debugPrint('Moving...');
  }
}

class MyPetrolCar extends FuelVehicle {
  @override
  void move() {
    debugPrint('Moving...');
  }

  @override
  void refuel() {
    debugPrint('Refilling the petrol...');
  }
}

void serviceFuelVehicle(FuelVehicle vehicle) {
  vehicle.refuel();
}

void serviceElectricVehicle(ElectricVehicle vehicle) {
  vehicle.charge();
}
