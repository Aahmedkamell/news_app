import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_ui_setup/widgets/categories_list_view.dart';
import 'package:news_app_ui_setup/widgets/news_list_builder.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('News',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
              Text(
                'Cloud',
                style: GoogleFonts.poppins(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoriesListView()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewsListViewBuilder(
                category: 'general',
              ),
            ],
          ),
        ));
  }
}
