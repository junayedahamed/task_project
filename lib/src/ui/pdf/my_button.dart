import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.buttonName,
    required this.iconpath,
    required this.onPressed,
  });
  final String buttonName, iconpath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: 40,
          maxWidth: 150,
          minHeight: 30,
          minWidth: 100,
        ),

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.blue.shade600,
              Colors.blue.shade500,
              Colors.blue.shade400,
              Colors.blue.shade400,
              Colors.blue.shade400,
              Colors.blue.shade300,
              Colors.blue.shade300,
              Colors.blue.shade300,
            ],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              Text(buttonName, style: TextStyle(color: Colors.white)),
              SvgPicture.asset(
                iconpath,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
