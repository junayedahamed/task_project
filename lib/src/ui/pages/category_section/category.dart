import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';
import 'package:task_project/src/ui/pages/category_section/widget/category_card.dart';
import 'package:task_project/src/ui/pages/category_section/widget/data.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(width: 8);
          },
          scrollDirection: Axis.horizontal,
          itemCount: CategoryData.data.length,
          itemBuilder: (context, index) {
            log("message");
            return CategoryCard(
              onpress: () {},
              categoryName: CategoryData.data.keys.toList()[index],
              categoryImg: CategoryData.data.values.toList()[index],
            );
          },
        ),
      ),
    );
  }
}
