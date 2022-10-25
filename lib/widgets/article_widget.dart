import 'package:flutter/material.dart';

Widget articleWidget(BuildContext context, String content) {
return Card(
  color: Colors.red,
  child: Center(
    child: Text(
      content,
      style: const TextStyle(
        fontSize: 25,
      ),
    ),
  ),
);
}