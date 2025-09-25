import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
 var futureNews;
 
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
     futureNews= NewsService(Dio()).getGeneralNews();
  }
 
 
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: futureNews,
        builder: (context, snapshot) {
          if (snapshot.hasData) {   
            return NewsListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: ErrorMessage(),
              ),
            );
          } else {
            return SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: LoadingIndicator(),
              ),
            );
          }
        });
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: Colors.deepOrange,
    );
  }
}



class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('opps! there was an error');
  }
}
