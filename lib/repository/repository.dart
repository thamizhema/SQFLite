import 'package:sqflite/sqflite.dart';
import 'package:sqflite_practice/repository/database_conection.dart';

class Repository {
  DatabaseConnection _databaseConnection;

  Repository() {
    _databaseConnection = DatabaseConnection();
  }
  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _databaseConnection.setDatabase();
    return _database;
  }

  insertData(table, data) async {
    var connection = await database;
    return connection.insert(table, data);
  }
}
