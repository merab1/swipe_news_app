class NewsModel {
  String title;
  String content;
  String? urlToImage;
  String url;

  NewsModel(
      {required this.title,
      required this.content,
      this.urlToImage,
      required this.url});

  factory NewsModel.fromJson(Map<dynamic, dynamic> json) => NewsModel(
        title: json['title'] as String,
        content: json['content'] as String,
        urlToImage: json['urlToImage'],
        url: json['url'],
      );
}
