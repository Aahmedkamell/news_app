import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,required this.category
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context){return  CategoryView(category: category.categoryName);
          },
          
          
          ),);    
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        height: 85,
        width: 160,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(category.image)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
            child: Text(
          category.categoryName,
          style: GoogleFonts.inter(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
