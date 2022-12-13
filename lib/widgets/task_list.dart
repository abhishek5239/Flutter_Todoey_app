import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/module/task.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/module/task_data.dart';

class Tasklist_ext extends StatelessWidget {
  // final List<Task> tasks;
  // Tasktile_ext(this.tasks);
  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, Taskdata_var, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return Tasktile_ext(
                tasktitle: Taskdata_var.tasks[index].name,
                ischange: Taskdata_var.tasks[index].isdone,
                checkboxcallback: (bool? check_value) {
                  Taskdata_var.check_the_box(Taskdata_var.tasks[index]);
                  // setState(() {
                  //   Provider.of<Taskdata>(context).tasks[index].toggledone();
                  // });
                },
                onpresslong: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Todoey'),
                      content: Text("The current choose task will get deleted"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Taskdata_var.onpresslong(
                                  Taskdata_var.tasks[index]);
                              Navigator.pop(context);
                            },
                            child: Text("OK")),
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("Cancle"))
                      ],
                    ),
                  );
                  // showMenu(context: context, position: position, items: items)
                });
          },
          //used to give info of total no. of the item
          itemCount: Taskdata_var.tasks.length,
        );
      },
    );
  }
}
