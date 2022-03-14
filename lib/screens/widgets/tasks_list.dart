import 'package:flutter/material.dart';
import 'package:today_work_firebase/models/tasks.dart';
import 'package:today_work_firebase/screens/widgets/tasks_tile.dart';


class TaskList extends StatelessWidget {
  List<Tasks> tasks = [
    Tasks(name: "Buy Milk", isDone: false),
    Tasks(name: "Buy egg", isDone: false),
    Tasks(name: "Buy bread", isDone: false)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
      return TaskTile(
        ischackedstate: tasks[index].isDone,
        taskTitle: tasks[index].name,
      );
    });
  }
}
