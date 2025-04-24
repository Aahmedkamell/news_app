import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
   CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business.avif', categoryName: 'Busniess'),
    CategoryModel(
        image: 'assets/entertaiment.avif', categoryName: 'Entertaiment'),
    CategoryModel(image: 'assets/general.avif', categoryName: 'General'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.avif', categoryName: 'sports'),
    
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85, 
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
