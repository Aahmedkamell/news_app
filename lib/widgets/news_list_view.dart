import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_article.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    NewsService(Dio()).getGeneralNews;
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom:22),
        child: NewsArticle(),
      );
    }));
  }
}
