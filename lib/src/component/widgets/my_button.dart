import 'package:flutter/material.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({
    super.key,
    required this.onpress,
    this.buttonColor,
    this.buttonBorderRadius,
  });
  final Color? buttonColor;
  final double? buttonBorderRadius;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.buttoncolor,
          borderRadius: BorderRadius.circular(buttonBorderRadius ?? 10),
        ),
      ),
    );
  }
}
