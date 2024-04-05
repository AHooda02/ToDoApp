import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference the box
  final _myBox = Hive.box('myBox');

  void createInitialData() {
    toDoList = [];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
