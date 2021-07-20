import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('First appointment'),
      trailing: Checkbox(
        value: false,
        onChanged: (value) => ({
          value = true,
        }),
      ),
    );
  }
}
