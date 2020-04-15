import 'package:academind_assignment_1/assets/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function nextHandler;
  final Function prevHandler;

  TextControl(this.nextHandler, this.prevHandler);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(
          icon: Icon(MyFlutterApp.left_open),
          onPressed: prevHandler,
        ),
        IconButton(
          icon: Icon(MyFlutterApp.right_open),
          onPressed: nextHandler,
        ),
      ],
    );
  }
}
