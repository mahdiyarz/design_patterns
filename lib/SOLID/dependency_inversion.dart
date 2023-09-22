import 'package:flutter/foundation.dart';

//! BAD SYNTAX

class User {
  String name;

  User(this.name);
}

class SQLDatabase {
  void saveUser(User user) {
    debugPrint('Saving ${user.name} to MySQL database...');
  }
}

class UserService {
  SQLDatabase database;

  UserService(this.database);

  void saveUser(User user) {
    database.saveUser(user);
  }
}

//* GOOD SYNTAX

abstract class Database {
  void saveUser(User user);
}

class MySQLDatabase implements Database {
  @override
  void saveUser(User user) {
    debugPrint('Saving ${user.name} to MySQL database...');
  }
}

class PostgreSQLDatabase implements Database {
  @override
  void saveUser(User user) {
    debugPrint('Saving ${user.name} to MySQL database...');
  }
}

class MyUserService {
  MySQLDatabase database;

  MyUserService(this.database);

  void saveUser(User user) {
    database.saveUser(user);
  }
}
