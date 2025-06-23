import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_project/gen/assets.gen.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({
    super.key,
    required this.ratting,
    required this.name,
    required this.job,
    required this.image,
    required this.onpress,
  });
  final double ratting;
  final String name;
  final String job;
  final String image;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Stack(
        alignment: Alignment.topCenter,

        children: [
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.serviceCardBordercolor,
                width: 1,
              ),
            ),
          ),

          Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: CircleAvatar(
                      radius: 40,
                      foregroundImage: NetworkImage(image),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 20,
                    color: AppColors.rattingSticker,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(Assets.icons.star),
                          Text(
                            ratting.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              Text(job, style: TextStyle(color: AppColors.servicecardtxtcolor)),
            ],
          ),
        ],
      ),
    );
  }
}
