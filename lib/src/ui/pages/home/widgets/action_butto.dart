import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.onpress,
    required this.numOfNotification,
    required this.icon,
  });
  final VoidCallback onpress;
  final int numOfNotification;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(height: 20, width: 20, child: SvgPicture.asset(icon)),
            ],
          ),
          numOfNotification > 0
              ? Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      numOfNotification.toString(),
                      style: TextStyle(color: AppColors.white, fontSize: 8),
                    ),
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
