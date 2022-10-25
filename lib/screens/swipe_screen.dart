import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/swipe_widget.dart';

class SwipeScreen extends StatelessWidget {
  SwipeScreen({Key? key}) : super(key: key);
  final Data newsData = Data();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              _getSwipeList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSwipeListItem(
      BuildContext context, AsyncSnapshot<dynamic> snapshot, int index) {
    final newsItem = snapshot.data[index].title;
    return swipeWidget(context, newsItem);
  }

  Widget _buildSwipeList(
      BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: snapshot.hasData ? snapshot.data.length : 0,
      itemBuilder: (context, index) {
        return _buildSwipeListItem(context, snapshot, index);
      },
    );
  }

  Widget _getSwipeList() {
    return Expanded(
      child: FutureBuilder(
          future: newsData.getNewsList(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: LinearProgressIndicator(),
              );
            }
            else {
             return _buildSwipeList(context, snapshot);
            }
          }),
    );
  }
}
