import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';

class NavigatorButton extends StatelessWidget {
  const NavigatorButton({
    super.key,
    required this.navIcon,
    required this.buttonName,
    required this.onTap,
    this.color,
    this.iconcolor,
  });
  final String navIcon;
  final String buttonName;
  final Color? color, iconcolor;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: 36,
        width: 116,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              navIcon,
              height: 24,
              width: 24,
              colorFilter: ColorFilter.mode(
                iconcolor ?? AppColors.searchbarcomponentcolor,
                BlendMode.srcIn,
              ),
            ),
            Text(buttonName, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
