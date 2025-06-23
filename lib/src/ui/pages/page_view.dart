import 'package:flutter/material.dart';
import 'package:task_project/src/component/widgets/navigator_button.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';
import 'package:task_project/src/constants/colors/nav_button_names.dart';

import 'package:task_project/src/ui/pages/home/home_page.dart';

class PageViewSection extends StatefulWidget {
  const PageViewSection({super.key});

  @override
  State<PageViewSection> createState() => _PageViewSectionState();
}

class _PageViewSectionState extends State<PageViewSection> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: List.generate(NavButtonNames.buttonnamesAndIcons.length, (
            index,
          ) {
            return Flexible(
              flex: selected == index ? 3 : 1,
              child: NavigatorButton(
                color: selected == index ? AppColors.buttoncolor : null,
                navIcon: NavButtonNames.buttonnamesAndIcons.values
                    .toList()[index],
                iconcolor: selected == index ? AppColors.white : null,

                buttonName: selected == index
                    ? " ${NavButtonNames.buttonnamesAndIcons.keys.toList()[index]}"
                          .toUpperCase()
                    : '',
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}
