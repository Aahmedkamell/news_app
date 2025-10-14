class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String? url;

  ArticleModel({this.image, required this.title, this.subTitle, this.url});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
      url: json['url'],
    );
  }
}
