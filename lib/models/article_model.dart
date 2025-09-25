class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;

  ArticleModel({this.image, required this.title, this.subTitle});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}
