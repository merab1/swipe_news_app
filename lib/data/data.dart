import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import '../models/news_model.dart';

const apiUrl =
    'https://newsapi.org/v2/everything?q=technology&apiKey=6b685af4535b40e59894ce5039751a27';

class Data {
  Future getData(String url) async {
    if (kDebugMode) {
      print('Calling url $url');
    }
    final response = await get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      if (kDebugMode) {
        print('Connection is fine');
      }
      return response.body;
    } else {
      if (kDebugMode) {
        print('error: $response.statusCode');
      }
    }
  }

  Future<List<NewsModel>> getNewsList() async {
    final newsData = await Data().getData(apiUrl);
    var news = json.decode(newsData);
    var newsList = <NewsModel>[];
    var newsItems = news['articles'];
    newsItems.forEach((element) {
      newsList.add(
        NewsModel.fromJson(element),
      );
    });
    return newsList;
  }
}
