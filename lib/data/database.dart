import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List todoList = [];

  // reference the box
  final _myBox = Hive.box('mybox');

  // run this method if this is the first time ever opening this app
  void createInitialData() {
    todoList = [
      ['Make Money', false],
      ['Be Happy', false],
    ];
  }

  // load the data from the database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put('TODOLIST', todoList);
  }
}
