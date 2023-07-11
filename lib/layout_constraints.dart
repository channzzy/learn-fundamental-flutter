import 'package:flutter/material.dart';

class LayoutConstraints extends StatelessWidget {
  static const routeName = '/layout_constraints';
  const LayoutConstraints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: Colors.red,
          child: Text('Hello! This is a very long Text!'),
        )),
        Container(
          color: Colors.green,
          child: Text('Goodbye!'),
        ),
      ],
    );
  }
}
