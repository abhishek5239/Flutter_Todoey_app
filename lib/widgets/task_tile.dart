import 'package:flutter/material.dart';

class Tasktile_ext extends StatelessWidget {
  final bool? ischange;
  final String? tasktitle;
  final Function(bool?)? checkboxcallback;
  final VoidCallback? onpresslong;

  Tasktile_ext(
      {this.ischange, this.tasktitle, this.checkboxcallback, this.onpresslong});

  // void funcheck(bool? check_value) {
  //   setState(() {
  //     ischange = check_value;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: onpresslong!,
        leading: Text(
          tasktitle!,
          style: TextStyle(
              decoration: ischange! ? TextDecoration.lineThrough : null),
        ),
        trailing: Transform.scale(
          scale: 1.3,
          child: Checkbox(
            checkColor: Colors.white,
            activeColor: Colors.deepOrange,
            overlayColor: MaterialStateProperty.all(Colors.orangeAccent),
            shape: CircleBorder(),
            value: ischange,
            onChanged: checkboxcallback!,
          ),
        ));
  }
}

// class ext_checkbox extends StatelessWidget {
//   final bool? is_check;
//   final void Function(bool?)? funcheck;
//   ext_checkbox({this.is_check, this.funcheck});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(value: is_check, onChanged: funcheck);
//   }
// }
