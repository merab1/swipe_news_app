import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SwipeScreen extends StatelessWidget {
  const SwipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print('tapped');
              }
            },
            child: PageView(
              scrollDirection: Axis.vertical,
              children: const [
                Card(
                  color: Colors.blueAccent,
                  child: Center(
                    child: Text(
                      'Page #1',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Page #2',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
