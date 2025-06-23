import 'package:flutter/material.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({super.key, required this.image, required this.onpress});
  final String image;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: SizedBox(
        height: 150,

        width: 307,
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(12),
          child: Image.network(
            image,
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error);
            },
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
