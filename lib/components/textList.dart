// ignore_for_file: use_key_in_widget_constructors, camel_case_types, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:todolist_app/components/tasks.dart';
import 'package:todolist_app/components/textTile.dart';

class textList extends StatefulWidget {
  final List<Task> tasks;

  textList(this.tasks);

  @override
  State<textList> createState() => _textListState();
}

class _textListState extends State<textList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return textTile(widget.tasks[index].name, widget.tasks[index].isDone,
            (checkboxState) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        });
      },
      itemCount: widget.tasks.length,
    );
  }
}
