class NewsModel {
  String title;

  NewsModel({required this.title});

  factory NewsModel.fromJson(Map<dynamic, dynamic> json) => NewsModel(
        title: json['title'],
      );
}
