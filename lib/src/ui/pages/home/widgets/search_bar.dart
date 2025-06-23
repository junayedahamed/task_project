import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_project/gen/assets.gen.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.searchcontroller,
    required this.filterPress,
  });
  final TextEditingController searchcontroller;
  final VoidCallback filterPress;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 35,
      width: width * 0.65,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 10, top: 7),
            child: Icon(
              Icons.search,
              size: 25,
              color: AppColors.searchbarcomponentcolor,
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: TextFormField(
                controller: searchcontroller,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
          ),
          SvgPicture.asset(
            Assets.icons.bar,
            height: 25,
            width: 25,
            colorFilter: ColorFilter.mode(
              AppColors.searchbarcomponentcolor,
              BlendMode.srcIn,
            ),
          ),

          GestureDetector(
            onTap: filterPress,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: SvgPicture.asset(
                Assets.icons.filterSvg,

                height: 25,
                width: 25,
                colorFilter: ColorFilter.mode(
                  AppColors.searchbarcomponentcolor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
