import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'tasks.dart';


class TaskData extends ChangeNotifier {

   final List<Task> _tasks = [
    Task(name: 'Buy groceries'),
    Task(name: 'Do weekly assignments'),
    Task(name: 'Do house chores'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }


  void addTask(newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }


  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    // _tasks = _tasks.where((element) => element != task).toList();
    notifyListeners();
  }
}

//a getter does not need input parameter()