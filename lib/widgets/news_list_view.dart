import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_article.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    NewsService(Dio()).getNews;
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsArticle(
            article: articles[index],
          ),
        );
      }),
    );
  }
}
