import 'package:flutter/material.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({
    super.key,
    required this.onpress,
    this.buttonColor,
    this.buttonBorderRadius,
    required this.widget,
  });
  final Color? buttonColor;
  final double? buttonBorderRadius;
  final VoidCallback onpress;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 40,
        width: width * 0.8,
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.buttoncolor,
          borderRadius: BorderRadius.circular(buttonBorderRadius ?? 10),
        ),
        child: Center(child: widget),
      ),
    );
  }
}
