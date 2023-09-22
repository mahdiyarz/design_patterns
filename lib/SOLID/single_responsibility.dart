import 'package:flutter/foundation.dart';

//! BAD SYNTAX

class User {
  String name;
  String email;

  User(this.name, this.email);

  void saveUserToDatabase() {
    //? save user to the database
  }

  void showWelcomeMessage() {
    debugPrint('Welcome, $name');
  }
}

//* GOOD SYNTAX

class UserData {
  String name;
  String email;

  UserData(this.name, this.email);
}

class UserRepository {
  void saveUserToDatabase(UserData userData) {
    //? save user to the database
  }
}

class UserView {
  void showWelcomeMessage(UserData userData) {
    debugPrint('Welcome, ${userData.name}');
  }
}
