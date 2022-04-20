// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/screens/tasks_screen.dart';
import 'package:todolist_app/tasks_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TasksData(),
      child: MaterialApp(
        home: tasksScreen(),
      ),
    );
  }
}
