import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//declare model class
class User {
  final int id;
  final String name;
  final int age;

  const User({required this.id, required this.name, required this.age});


  Map<String, dynamic> toMap() {
    //keys must correspond to the names of the columns in the database
    return {
      'id': id,
      'name': name,
      'age': age
    };
  }

  @override
  String toString() {
    return 'User{id:$id name $name age $age }';
  }

}


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final String createSql = 'CREATE TABLE user(id INTEGER PRIMARY_KEY, name TEXT,age INTEGER)';

  User user = User(id: 1, name: 'test', age: 33);

  final database = openDatabase(
      join(await getDatabasesPath(), 'user_database.db'),
      onCreate: (db, version) {
        return db.execute(createSql);
      },
      version: 1
  );
  //insert
  Future<void> insertUser(User user) async {
    //get database refernce
    final db = await database;
    await db.insert(
        'user', user.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  //list
  Future<List<User>> findAll() async {
    final db = await database;
    //Query table
    final List<Map<String, dynamic>> maps = await db.query('user');

    return List.generate(maps.length, (i) {
      return User(
          id: maps[i]['id'], name: maps[i]['name'], age: maps[i]['age']);
    });
  }
  Future<void> update() async {
    final db = await database;
    await db.update('user', user.toMap(), where: 'id=?', whereArgs: [user.id]);
  }
  Future<void> deleteUser(int id) async {
    final db = await database;
    await db.delete('user', where: 'id=?', whereArgs: [id]);
  }

  //add user into table
  await insertUser(user);
  //list inserted users
  print(await findAll());
  //update
  user = User(id: 1, name: 'foo', age: 45);
  await update();
  //updated results
  print(await findAll());
  //delete
  await deleteUser(1);
  print(await findAll());
}
