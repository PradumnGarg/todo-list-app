// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class textTile extends StatelessWidget {
  final String text;
  final bool isChecked;
  final Function checkBoxCallback;
  final Function longPressCallback;

  textTile(
      this.text, this.isChecked, this.checkBoxCallback, this.longPressCallback);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => longPressCallback(),
      title: Text(
        text,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) {
          checkBoxCallback(value);
        },
      ),
    );
  }
}
