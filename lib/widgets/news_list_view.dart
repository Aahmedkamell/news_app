
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_article.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: NewsArticle(),
      );
    });
  }
}
