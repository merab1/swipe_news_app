import 'package:flutter/material.dart';

Widget swipeWidget(BuildContext context, String title, String urlTuImage) {
  return Card(
    color: const Color.fromARGB(255, 208, 197, 255),
    child: FractionallySizedBox(
      widthFactor: 0.9,
      heightFactor: 0.6,
      child: Column(
        children: [
          Container(
            width: 400,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(urlTuImage),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
