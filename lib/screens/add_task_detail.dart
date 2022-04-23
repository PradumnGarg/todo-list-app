// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, deprecated_member_use, prefer_const_declarations, unused_local_variable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/tasks_data.dart';

class addTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String textadd = "";

    return Container(
        color: Color(0xFF757575),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              )),
          padding: EdgeInsets.all(50.0),
          child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Add Task',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.lightBlueAccent),
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    textadd = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 20.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlueAccent,
                    ),
                    onPressed: () {
                      Provider.of<TasksData>(context, listen: false)
                          .addTask(textadd);
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Add',
                    ),
                  ),
                ),
              ]),
        ));
  }
}
