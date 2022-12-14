import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/module/task_data.dart';
import 'package:todoey_flutter/zoomdrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Taskdata>(
      create: (BuildContext context) => Taskdata(),
      child: MaterialApp(
        // home: TasksScreen(),
        home: get_drawer(),
      ),
    );
  }
}
