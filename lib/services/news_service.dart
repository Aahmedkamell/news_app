import 'package:dio/dio.dart';

class NewsService {
  final dio = Dio();

  void getGeneralNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/everything?q=bitcoin&apiKey=7e2130d74f1f4d71afb7106d05663343');
    print(response);
  }

  void getSportNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=7e2130d74f1f4d71afb7106d05663343&category=sports');
    print(response);
  }
}
