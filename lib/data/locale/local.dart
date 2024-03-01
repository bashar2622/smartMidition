// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class DataBase_notes {
//   static Database? database;

//   Future<Database?> get DB async {
//     if (database == null) {
//       database = await intiDB();
//       return database;
//     } else {
//       return database;
//     }
//   }

//   intiDB() async {
//     String path = await join(getDatabasesPath().toString(), 'demo.db');
//     Database database =
//         await openDatabase(path, onCreate: _onCreate, version: 4);
//     return database;
//   }

//   Future _onCreate(Database database, int version) async {
//     await database.execute(
//         'CREATE TABLE noti ("id" INTEGER PRIMARY KEY AUTOINCREMENT, "title" TEXT, "content" TEXT , "datetime" DATE)');
//   }

//   insertData(String t, String c) async {
//     Database? mydb = await DB;
//     int response = await mydb!.rawInsert(
//         "INSERT INTO 'noti'('title','content','datetime') VALUES ('${t}','${c}','${DateTime.now()}')");
//     print('-------- insert done --------');
//     return response;
//   }

// //
//   Future<List> readtData(String sql) async {
//     Database? mydb = await DB;
//     List<Map> resp = await mydb!.rawQuery(sql);
//     print('-------- read done --------');

//     return resp.toList();
//   }

//   Future deleteData(int id) async {
//     Database? mydb = await DB;
//     int count = await mydb!.rawDelete("DELETE FROM 'noti' WHERE id =${id}");
//     print(count);
//   }
// }

