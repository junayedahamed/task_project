import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_project/gen/assets.gen.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';
import 'package:task_project/src/ui/pages/home/widgets/action_butto.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.ratting,
    required this.time,
    required this.workType,
    required this.currentPrice,
    required this.previousPrice,
    required this.jobDescriptionWithLocation,
    required this.personName,
    this.personImage,
    required this.serviceImg,
  });
  final String ratting,
      time,
      workType,
      serviceImg,
      jobDescriptionWithLocation,
      personName;
  final String? personImage;
  final int previousPrice, currentPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 286,
      width: 204,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.serviceCardBordercolor, width: 0.8),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        spacing: 10,
        children: [
          SizedBox.shrink(),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 128,
                width: 188,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  // color: Colors.amber,
                ),

                child: Image.network(
                  serviceImg,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error);
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ActionButton(
                  onpress: () {},
                  numOfNotification: 0,
                  icon: Assets.icons.heart,
                ),
              ),
            ],
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                // spacing: 4,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(Assets.icons.star),

                      Text(
                        " $ratting",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                      SvgPicture.asset(
                        Assets.icons.dot,
                        colorFilter: ColorFilter.mode(
                          AppColors.servicecardtxtcolor,
                          BlendMode.srcIn,
                        ),
                      ),
                      Text(
                        "$time hr",
                        style: TextStyle(
                          color: AppColors.servicecardtxtcolor,
                          fontSize: 12,
                        ),
                      ),
                      SvgPicture.asset(
                        Assets.icons.dot,
                        colorFilter: ColorFilter.mode(
                          AppColors.servicecardtxtcolor,
                          BlendMode.srcIn,
                        ),
                      ),
                      Text(
                        workType,
                        style: TextStyle(
                          color: AppColors.servicecardtxtcolor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  SizedBox(
                    height: 15,

                    child: Text(
                      "$jobDescriptionWithLocation ",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "\$$currentPrice ",
                          style: TextStyle(
                            color: AppColors.appbarbg2,
                            fontSize: 14,
                          ),
                        ),
                        previousPrice > 0
                            ? TextSpan(
                                text: " \$$previousPrice",
                                style: TextStyle(
                                  color: AppColors.strokedPriceColor,
                                  decoration: TextDecoration.combine([
                                    TextDecoration.lineThrough,
                                  ]),
                                  fontSize: 14,
                                ),
                              )
                            : TextSpan(),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Divider(color: AppColors.serviceCardBordercolor),
                  ),

                  Row(
                    spacing: 4,
                    children: [
                      CircleAvatar(
                        maxRadius: 20,
                        // child: ClipRRect(
                        //   borderRadius: BorderRadiusGeometry.circular(100),
                        //   child: Image.network(
                        //   personImage ?? '',

                        //   errorBuilder: (context, error, stackTrace) {
                        //     return Icon(Icons.person);
                        //   },
                        //   fit: BoxFit.fill,
                        // ),

                        // ),
                        foregroundImage: NetworkImage(personImage ?? ''),
                      ),
                      Text(
                        personName,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
