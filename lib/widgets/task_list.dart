import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:to_doey/models/tasks_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget{
  const TaskList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          final task= taskData.tasks[index];
          return TaskTile(
            isChecked: task.isDone,
            taskTitle: task.name,
            checkBoxCallback: (checkBoxState) {
              // task.toggleDone(); can't use directly because of the notifyListeners
           taskData.updateTask(task); },
            removeTask: () {taskData.deleteTask(task); },
          );
        },
        itemCount: taskData.taskCount
      );
    });

   //with return you use semi-colon instead of a comma,
  }
}

//the parent widget from as seen from the flutter in
//     isChecked= checkBoxState(represents the newValue for OnChanged),
//     task[index].toggleDone
//     the later was used to change the checkBoxState to true/false while the later toggleDone now does it
