import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/article_widget.dart';

class ArticleScreen extends StatelessWidget {
  ArticleScreen({Key? key, required this.content}) : super(key: key);
  final String content;
  final Data newsData = Data();

  @override
  Widget build(BuildContext context) {
    return _getArticle();
  }

  Widget _article(
      BuildContext context, AsyncSnapshot<dynamic> snapshot, int index) {
    final articleItem = snapshot.data[index].content;
    return articleWidget(context, articleItem);
  }

  Widget _getArticle() {
    return Expanded(
      child: FutureBuilder(
        future: newsData.getNewsList(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: LinearProgressIndicator(),
            );
          } else {
            int index = 0;
             index =  snapshot.data[index];
            return _article(context, snapshot, index);
          }
        },
      ),
    );
  }
}
