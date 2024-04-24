import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final mybox = Hive.box("mybox");

  void createIntialData() {
    toDoList = [
      ["Like this", false]
    ];
  }

  void loadData() {
    toDoList = mybox.get("TODOLIST");
  }

  void updateDataBase() {
    mybox.put("TODOLIST", toDoList);
  }
}
