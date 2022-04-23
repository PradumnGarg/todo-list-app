// ignore_for_file: camel_case_types, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todolist_app/components/tasks.dart';
import 'package:todolist_app/components/textList.dart';
import 'package:todolist_app/screens/add_task_detail.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/tasks_data.dart';

class tasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => SingleChildScrollView(
                          child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: addTask(),
                      )));
            },
            child: Icon(Icons.add)),
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.list,
                            color: Colors.lightBlueAccent, size: 30),
                        radius: 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('ToDoey',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.0,
                            fontWeight: FontWeight.w700)),
                    Text(
                      '${Provider.of<TasksData>(context).tasks.length} tasks',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  child: textList(),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
