// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import '../models/leaderboard.dart';

// class Helper {
 
//  static final Helper instance = Helper.internal();
//   factory Helper() => instance;
//   static Database? adatabase;



//   Helper.internal();

//   Future<Database> get database async {

//     if (adatabase != null) return adatabase!;
//     adatabase = await _initDatabase();
//     return database;
//   }

//   Future<Database> _initDatabase() async {
//     final dbPath = await getDatabasesPath();
//     final path = join(dbPath, 'user_leaderboard.db');

//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: _onCreate,
//     );
//   }

//   Future<void> _onCreate(Database db, int version) async {
//     await db.execute('''
//       CREATE TABLE users(
//         id INTEGER PRIMARY KEY AUTOINCREMENT,
//         username TEXT,
//         reputationPoints INTEGER,
//         rank TEXT,
//         address TEXT
//       )
//     ''');
//   }

//   Future<void> insertUser(leadermodel user) async {
//     final db = await database;
//     await db.insert('users', user.toMap(),
//         conflictAlgorithm: ConflictAlgorithm.replace);
//   }

//   Future<List<leadermodel>> getUsers() async {
//     final db = await database;
//     final List<Map<String, dynamic>> maps = await db.query('users');
//     return List.generate(maps.length, (i) {
//       return leadermodel.fromMap(maps[i]);
//     });
//   }

//   Future<void> updateUser(leadermodel user) async {
//     final db = await database;
//     await db.update(
//       'users',
//       user.toMap(),
//       where: 'id = ?',
//       whereArgs: [user.id],
//     );
//   }

//   Future<void> deleteUser(int id) async {
//     final db = await database;
//     await db.delete(
//       'users',
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }
// }
