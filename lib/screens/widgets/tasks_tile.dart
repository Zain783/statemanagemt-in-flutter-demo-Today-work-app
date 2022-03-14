import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  String taskTitle;
  bool ischackedstate;

  TaskTile({required this.ischackedstate, required this.taskTitle});
  @override
  State<TaskTile> createState() =>
      _TaskTileState(ischackedstate: ischackedstate, taskTitle:taskTitle);
}

class _TaskTileState extends State<TaskTile> {
  _TaskTileState({required this.ischackedstate, required this.taskTitle});
  String taskTitle;
  bool ischackedstate;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          "${taskTitle}",
          style: TextStyle(
              decoration: ischackedstate
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
        trailing: Checkbox(
            value: ischackedstate,
            onChanged: (ischecked) {
              setState(() {
                ischackedstate = ischecked!;
              });
            }));
  }
}

// class TaskCheckedBoxState extends StatelessWidget {


//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
