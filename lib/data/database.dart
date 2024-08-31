import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [];

  final _theBox = Hive.box('theBox');

  void createInitialData() {
    toDoList = [
      ['Water Table', false],
      ['Jump Rope', false],
    ];
  }

  void loadData() {
    toDoList = _theBox.get('TODOLIST');
  }

  void updateDataBase() {
    _theBox.put('TODOLIST', toDoList);
  }
 
}