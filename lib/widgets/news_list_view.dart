import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/views/article_web_view.dart';
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
          child: GestureDetector(
            onTap: () {
              if (articles[index].url != null && articles[index].url!.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArticleWebView(article: articles[index]),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Article URL is not available')),
                );
              }
            },
            child: NewsArticle(
              article: articles[index],
            ),
          ),
        );
      }),
    );
  }
}
