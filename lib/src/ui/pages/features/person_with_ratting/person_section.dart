import 'package:flutter/material.dart';
import 'package:task_project/src/constants/colors/app_colors.dart';
import 'package:task_project/src/ui/pages/features/person_with_ratting/widget/person_card.dart';
import 'package:task_project/src/constants/colors/person_data.dart';

class PersonSection extends StatelessWidget {
  const PersonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      color: AppColors.white,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final data = PersonData.providerList[index];
          return PersonCard(
            onpress: () {},
            ratting: double.parse(data['average_rating']),
            name: data['full_name'],
            job: data['job'],
            image: data['image'],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 16);
        },
        itemCount: PersonData.providerList.length,
      ),
    );
  }
}
