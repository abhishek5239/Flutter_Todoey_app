import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgets/task_list.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/screens/add_task_sheet.dart';
import 'package:todoey_flutter/module/task.dart';
import 'package:todoey_flutter/module/task_data.dart';

class TasksScreen extends StatelessWidget {
  //function which will return widget
  Widget showbottomsheet(BuildContext context) {
    return Column();
  }

  Taskdata task_provider = Taskdata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlueAccent,
      backgroundColor: Colors.deepOrange,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              //this is mainly used so that the user is able to clearly see the
              //add button from the bottom sheet above our keyboard
              builder: (context) => SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    //THIS IS THE CALLBACK FUNCTION USED WHERE IT TAKES THE
                    //BACK FROM THE FUNCTION
                    child: Addtasksheet((addtask_value) {
                      // print(addtask_value);
                      // setState(() {
                      //   tasks.add(Task(name: addtask_value));
                      // });
                      Navigator.pop(context);
                    }),
                  )));
        },
        backgroundColor: Colors.deepOrange,
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.deepOrange,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
                // Consumer<Taskdata>(builder: (context, Taskdata, child) {
                //   return Text(
                //     '${task_provider.tasks.length} tasks',
                //     style: TextStyle(color: Colors.white, fontSize: 18),
                //   );
                // })
                Text('${Provider.of<Taskdata>(context).tasks.length} tasks',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Tasklist_ext(),
          )),
        ],
      ),
    );
  }
}
