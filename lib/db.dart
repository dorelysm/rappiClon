import 'package:sqlite/Restaurante.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'Restaurante.dart';

class DB {

  static Future<Database> _openDB() async {

    return openDatabase(join(await getDatabasesPath(), 'restaurantes.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE restaurantes (id INTEGER PRIMARY KEY, nombre TEXT, tipo TEXT, valorDomicilio DOUBLE, tiempoEspera TEXT, logo TEXT)",
        );
      }, version: 1);
  }

  static Future<void> insert(Restaurante restaurante) async {
    Database database = await _openDB();

    return database.insert("restaurantes", restaurante.toMap());
  }

}