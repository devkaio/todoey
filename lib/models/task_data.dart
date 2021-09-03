import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Comprar pão'),
    Task(name: 'Caminhar de manhã'),
    Task(name: 'Limpar a casa'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
