// ignore_for_file: use_key_in_widget_constructors, camel_case_types, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/components/tasks.dart';
import 'package:todolist_app/components/textTile.dart';
import 'package:todolist_app/tasks_data.dart';

class textList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
        builder: (BuildContext context, taskData, Widget? child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return textTile(
              taskData.tasks[index].name, taskData.tasks[index].isDone,
              (checkboxState) {
            // setState(() {
            //   widget.tasks[index].toggleDone();
            // });
          });
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
