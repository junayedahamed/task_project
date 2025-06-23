import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';
import 'package:task_project/src/ui/pages/features/slider_section/widget/slider_below_button_func.dart';
import 'package:task_project/src/ui/pages/features/slider_section/widget/slider_card.dart';
import 'package:task_project/src/ui/pages/features/slider_section/widget/slider_data.dart';

class ServiceCarouselSlider extends StatelessWidget {
  ServiceCarouselSlider({super.key});
  final SliderBelowButtonFunc sliderfunction = SliderBelowButtonFunc();
  @override
  Widget build(BuildContext context) {
    int colindex = 0;
    return Container(
      color: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
            itemCount: SliderData.carouseldata.length,
            itemBuilder: (context, index, realIndex) {
              colindex = index;
              return SliderCard(
                image: SliderData.carouseldata[index],
                onpress: () {},
              );
            },
            options: CarouselOptions(
              autoPlay: true,
              // autoPlayInterval: Duration(milliseconds: 300),
              // animateToClosest: true,
              scrollDirection: Axis.horizontal,
              // autoPlayCurve: Easing.,
              // viewportFraction: 3,
              // autoPlayAnimationDuration: Duration(milliseconds: 500),
              onPageChanged: (index, reason) {
                sliderfunction.change(index);
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(SliderData.carouseldata.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: ListenableBuilder(
                  listenable: sliderfunction,
                  builder: (context, asyncSnapshot) {
                    return AnimatedContainer(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: colindex == index
                            ? AppColors.buttoncolor
                            : AppColors.serviceCardBordercolor,
                      ),
                      duration: Duration(milliseconds: 200),
                      height: 4,
                      width: 8,
                    );
                  },
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
