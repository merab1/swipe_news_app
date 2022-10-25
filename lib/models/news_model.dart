class NewsModel {
  String title;
  String content;

  NewsModel({required this.title, required this.content});

  factory NewsModel.fromJson(Map<dynamic, dynamic> json) => NewsModel(
        title: json['title'],
        content: json['content'],
      );
}
