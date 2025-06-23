import 'package:flutter/material.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';
import 'package:task_project/src/ui/pages/features/service_section/widget/service_card.dart';
import 'package:task_project/src/ui/pages/features/service_section/widget/service_data.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 318,
      color: AppColors.white,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(width: 16);
        },
        separatorBuilder: (context, index) {
          final data = ServiceData.filteredServices[index];
          final time = DateTime.now()
              .difference(DateTime.parse(data['created_at']).toLocal())
              .inHours;
          final day = (time / 24).toInt();
          return ServiceCard(
            ratting: data['average_rating'],
            time: day > 0 ? "$day day" : "$time hr",
            workType: data['name'],
            currentPrice: data['price'],
            previousPrice: data['discount_price'],
            jobDescriptionWithLocation: data['title'],
            personName: data['full_name'],
            personImage: data['personImg'],
            serviceImg: data['image'],
          );
        },
        itemCount: ServiceData.filteredServices.length,
      ),
    );
  }
}
