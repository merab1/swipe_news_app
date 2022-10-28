import 'package:flutter/material.dart';
import 'package:swipe_news_app/models/news_model.dart';

Widget articleWidget(BuildContext context, String content) {
return Card(
  color: Colors.yellow,
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