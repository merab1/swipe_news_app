import 'package:flutter/material.dart';

Widget articleWidget(BuildContext context, String title, String content,
    String? urlToImage, String url) {
  return Card(
    color: const Color.fromARGB(255, 208, 197, 255),
    child: FractionallySizedBox(
      widthFactor: 0.9,
      heightFactor: 0.9,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(urlToImage!),
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 260,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(200, 208, 197, 255),
                        border: Border.all(color: Colors.black),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            content,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}
