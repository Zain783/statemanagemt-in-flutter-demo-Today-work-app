import 'package:flutter/material.dart';
import 'package:state_mangement_1/screens/add_tasks.dart';
import 'package:state_mangement_1/screens/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  //we can also create our custom function in this way 
  // Widget buildBottomSheet(BuildContext context) {
  //   return Container(
  //     child:const  Center(
  //       child: Text("this is bottom sheet"),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            // isScrollControlled: true,
              context: context,
              builder: (context) {
                return SingleChildScrollView(child: AddTaskScreen());
              });
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  '12 Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              // height: MediaQuery.of(context).size.height/2,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const TaskList(),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
            ),
          ),
        ],
      ),
    );
  }
}
