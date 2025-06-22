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
      height: 40,
      width: width * .85,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
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

                height: 30,
                width: 30,
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
