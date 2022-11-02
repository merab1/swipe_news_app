class NewsModel {
  String title;
  String content;
  String? urlToImage;

  NewsModel(
      {required this.title, required this.content,  this.urlToImage});

  factory NewsModel.fromJson(Map<dynamic, dynamic> json) => NewsModel(
        title: json['title'] as String,
        content: json['content'] as String,
        urlToImage: json['urlToImage'],
      );
}
