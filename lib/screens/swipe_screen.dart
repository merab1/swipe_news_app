import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../data/data.dart';
import '../widgets/swipe_widget.dart';
import 'article_screen.dart';

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
    final newsItemTitle = snapshot.data[index].title;
    final newsItemImage = snapshot.data[index].urlToImage;
    return swipeWidget(context, newsItemTitle, newsItemImage);
  }

  Widget _buildSwipeList(
      BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: snapshot.hasData ? snapshot.data.length : 0,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: _buildSwipeListItem(context, snapshot, index),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return WebView(
                    initialUrl: snapshot.data[index].url,
                  );
                },
              ),
            );
          },
        );
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
            } else {
              return _buildSwipeList(context, snapshot);
            }
          }),
    );
  }
}
