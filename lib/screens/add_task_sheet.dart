import 'package:provider/provider.dart';
import 'package:todoey_flutter/module/task_data.dart';
import 'package:todoey_flutter/screens/add_task_sheet.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/module/task.dart';
import 'package:todoey_flutter/widgets/task_list.dart';

final _formKey = GlobalKey<FormState>();

class Addtasksheet extends StatelessWidget {
  final Function addtask_valuefunction;
  Addtasksheet(this.addtask_valuefunction);

  final _controller = TextEditingController();

  bool flag = false;

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    String task_value = "";
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 40),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                'Add Task',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w700,
                    fontSize: 30),
              ),
              SizedBox(
                width: 300,
                child: TextFormField(
                  // controller: _controller,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    // errorText: _errorText,
                    // labelText: "Enter the task",
                    // hintText: 'Enter',
                    hintStyle:
                        TextStyle(color: Colors.deepOrange, fontSize: 15),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orangeAccent, width: 3)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.amberAccent),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isNotEmpty) {
                      flag = true;
                      return null;
                    } else {
                      return 'Enter the task please';
                    }
                  },
                  onChanged: (value) {
                    task_value = value;
                    //TODO
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    print(task_value);
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }

                    Provider.of<Taskdata>(context, listen: false)
                        .add_tass_onscreen(task_value);
                    Navigator.pop(context);

                    //TODO
                    // addtask_valuefunction(task_value);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Text(
                      'Add',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      // backgroundColor: flag ? Colors.deepOrange : Colors.grey,
                      backgroundColor: Colors.deepOrange),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
