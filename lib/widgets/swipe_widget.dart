import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget swipeWidget(BuildContext context, String title) {
  return Card(
    color: Colors.blueAccent,
    child: Center(
      child: Text(
        title,
        style: const TextStyle(fontSize: 20),
      ),
    ),
  );
}
