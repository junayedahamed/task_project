import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_project/gen/assets.gen.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';
import 'package:task_project/src/ui/pages/features/category_section/category.dart';
import 'package:task_project/src/ui/pages/features/person_with_ratting/person_section.dart';
import 'package:task_project/src/ui/pages/features/search_job/post_job_section.dart';
import 'package:task_project/src/ui/pages/features/service_section/service_section.dart';
import 'package:task_project/src/ui/pages/features/slider_section/slider_section.dart';
import 'package:task_project/src/ui/pages/home/widgets/action_butto.dart';
import 'package:task_project/src/ui/pages/home/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final TextEditingController searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        //app bar section
        SliverAppBar(
          expandedHeight: 187,

          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.none,
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Flex(
                mainAxisSize: MainAxisSize.min,
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 10,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 2,
                        children: [
                          SvgPicture.asset(
                            Assets.icons.appBarHome,
                            height: 20,
                            width: 20,
                            colorFilter: ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Home",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "264 Boncycle,FL 32328",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),

                                  Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: AppColors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
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
                  Flexible(
                    child: SearchContainer(
                      filterPress: () {},
                      searchcontroller: searchcontroller,
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            background: Stack(
              children: [
                Container(
                  height: 222,
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
        ),

        //body section
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Column(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //category section
                SizedBox(height: 128, child: Categories()),
                //service section card builders
                ServiceSection(),
                //carousel section
                ServiceCarouselSlider(),
                //person section
                PersonSection(),
                //post job section
                PostJobSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
