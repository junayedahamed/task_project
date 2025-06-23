import 'package:flutter/material.dart';
import 'package:task_project/gen/assets.gen.dart';
import 'package:task_project/src/component/widgets/my_button.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';

class PostJobSection extends StatelessWidget {
  const PostJobSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: double.infinity),
      width: double.infinity,

      color: AppColors.white,
      child: Column(
        spacing: 16,
        children: [
          SizedBox(
            height: 196,
            width: 229,
            child: Image.asset(Assets.icons.srcImg.path, fit: BoxFit.cover),
          ),
          Text(
            "Post a Job",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Text(
            "Didn’t find what you’re looking for?",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColors.servicecardtxtcolor,
            ),
          ),
          SizedBox(height: 8),
          MyCustomButton(
            onpress: () {},
            widget: Text(
              "Post a Job",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
