import 'dart:io';

import 'package:mongo_dart/mongo_dart.dart';

class Mongo {
  static var _connnection;
  static String host = Platform.environment['MONGO_DART_HOST'] ?? 'localhost';
  static String port = Platform.environment['MONGO_DART_PORT'] ?? "27017";
  static String dbname = Platform.environment['MONGO_DBNAME'] ?? 'test';

  Mongo._();

  static dynamic getInstance() async {
    _connnection ??= Db('mongodb://$host/$port/$dbname');
    await _connnection.open();
    return _connnection;
  }
}
