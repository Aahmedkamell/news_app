import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});

  final List<CategoryModel> categories =  [
    CategoryModel(image: 'assets/business.jpg', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertainment.jpg', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/general.jpg', categoryName: 'General'),
    CategoryModel(image: 'assets/health.jpg', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.jpg', categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.jpg', categoryName: 'Sports'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
