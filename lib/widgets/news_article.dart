import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsArticle extends StatelessWidget {
  const NewsArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              'https://vid.alarabiya.net/images/2025/04/19/297c5cf2-50e9-4ea8-afe6-7cbab59963c1/297c5cf2-50e9-4ea8-afe6-7cbab59963c1_16x9_1200x676.JPG',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  height: 200,
                  color: Colors.grey[200],
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 200,
                  color: Colors.grey[200],
                  child: const Icon(Icons.error),
                );
              },
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'تحديث iOS يثير الارتباك بين مستخدمي آيفون',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: GoogleFonts.tajawal(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'تسبب في تلف بعض الأجهزة',
            maxLines: 2,
            style: GoogleFonts.tajawal(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
