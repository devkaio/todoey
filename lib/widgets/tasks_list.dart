import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return Material(
            child: Ink(
              child: InkWell(
                onLongPress: () {
                  Provider.of<TaskData>(context, listen: false)
                      .removeTask(task);
                },
                child: TaskTile(
                  taskTitle: task.name,
                  isChecked: task.isDone,
                  checkboxCallback: (checkboxState) {
                    taskData.updateTask(task);
                  },
                ),
              ),
            ),
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
