import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:todoey_flutter/menuscreen.dart';
// import 'package:sidedrower/mainpage.dart';

import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/module/task_data.dart';

class get_drawer extends StatefulWidget {
  const get_drawer({Key? key}) : super(key: key);

  @override
  State<get_drawer> createState() => _get_drawerState();
}

class _get_drawerState extends State<get_drawer> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: menuscreen(),
      mainScreen: TasksScreen(),
      angle: 0,
      duration: Duration(milliseconds: 600),
      menuBackgroundColor: Colors.orange,
      borderRadius: 30,
      showShadow: true,
    );
  }
}
