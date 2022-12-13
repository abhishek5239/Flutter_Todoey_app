import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/module/task.dart';

class Taskdata extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "buy bread"),
    Task(name: "buy chocolate"),
    Task(name: "buy cream")
  ];

  void add_tass_onscreen(String add_task) {
    final tt = Task(name: add_task);
    tasks.add(tt);
    notifyListeners();
  }

  void check_the_box(Task task) {
    task.isdone = !task.isdone!;
    notifyListeners();
  }

  void onpresslong(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
