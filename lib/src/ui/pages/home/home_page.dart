import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_project/gen/assets.gen.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';
import 'package:task_project/src/ui/pages/home/widgets/action_butto.dart';
import 'package:task_project/src/ui/pages/home/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [
                Container(
                  height: 187,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.appbarbg1, AppColors.appbarbg2],
                      begin: Alignment.topLeft,
                      end: AlignmentDirectional.bottomCenter,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(Assets.icons.shape1),
                      SvgPicture.asset(Assets.icons.shape2),
                    ],
                  ),
                ),
              ],
            ),
          ),
          toolbarHeight: 187,

          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                spacing: 43,
                children: [
                  SizedBox(
                    child: Row(
                      spacing: 2,
                      children: [
                        SvgPicture.asset(
                          Assets.icons.appBarHome,
                          height: 25,
                          width: 25,
                          colorFilter: ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                        Column(
                          spacing: 2,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Home",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "264 Boncycle,FL 32328",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ActionButton(
                        onpress: () {},
                        icon: Assets.icons.notificationsOutline,
                        numOfNotification: 5,
                      ),
                      SizedBox(width: 8),
                      ActionButton(
                        onpress: () {},
                        icon: Assets.icons.cart,
                        numOfNotification: 0,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),

              SearchContainer(
                filterPress: () {},
                searchcontroller: searchcontroller,
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}
