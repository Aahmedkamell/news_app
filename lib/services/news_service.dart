import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<void> getGeneralNews() async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=7e2130d74f1f4d71afb7106d05663343&category=general');
    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articleList = [];
  }
}
