import 'package:flutter/material.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.onpress,
    required this.categoryName,
    required this.categoryImg,
  });
  final VoidCallback onpress;
  final String categoryName;
  final String categoryImg;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 88,
        width: 72,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.network(
                categoryImg,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error, color: AppColors.red);
                },
                height: 64,
                width: 64,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              categoryName,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
