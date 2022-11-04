import 'package:flutter/material.dart';
import 'package:swipe_news_app/models/news_model.dart';

import '../data/data.dart';
import '../widgets/article_widget.dart';

class ArticleScreen extends StatelessWidget {
  ArticleScreen({Key? key, required this.newsModel}) : super(key: key);
  final NewsModel newsModel;
  final Data newsData = Data();

  @override
  Widget build(BuildContext context) {
    return articleWidget(context, newsModel.title, newsModel.content, newsModel.urlToImage);
  }

/*  Widget _article(
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

            return _article(context, snapshot, snapshot.data[index].content);
          }
        },
      ),
    );
  }*/
}
