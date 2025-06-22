import 'package:flutter/material.dart';
import 'package:task_project/src/component/widgets/navigator_button.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';
import 'package:task_project/src/constants/colors/nav_button_names.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(title: Row(children: [Icon(Icons.home_outlined)])),
        ],
      ),
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
                navIcon: Icon(
                  NavButtonNames.buttonnamesAndIcons.values.toList()[index],
                ),
                buttonName: selected == index
                    ? NavButtonNames.buttonnamesAndIcons.keys.toList()[index]
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
