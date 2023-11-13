import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }

    _database = await initDB();
    return _database;
  }

  Future<Database> initDB() async {

    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'your_database_name.db');


    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {

       
      },
    );
  }
}
