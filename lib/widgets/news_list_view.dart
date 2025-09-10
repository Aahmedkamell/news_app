import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_article.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  @override
  void initState()  {
    super.initState();

     getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getGeneralNews();
  }

  @override
  Widget build(BuildContext context) {
    NewsService(Dio()).getGeneralNews;
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: NewsArticle(
          article: articles[index],
        ),
      );
    }));
  }
}
