import 'package:flutter/material.dart';
import 'package:todolist_app/components/tasks.dart';

class TasksData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
