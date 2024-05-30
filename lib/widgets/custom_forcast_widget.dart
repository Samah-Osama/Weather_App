import 'package:flutter/material.dart';
import 'package:weather_app/widgets/Custom_ForcastDay_Item.dart';
import 'package:weather_app/widgets/custom_divider.dart';

class CustomForcastDaysWidget extends StatelessWidget {
  const CustomForcastDaysWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [BoxShadow()],
          color: Color.fromARGB(240, 255, 255, 255),
          borderRadius: BorderRadius.circular(15)),
      child: const Column(
        children: [
          CustomForcastDayItem(),
          CustomDivider(),
          CustomForcastDayItem(),
          CustomDivider(),
          CustomForcastDayItem(),
          CustomDivider(),
          CustomForcastDayItem(),
          CustomDivider(),
          CustomForcastDayItem(),
          CustomDivider(),
          CustomForcastDayItem(),
          CustomDivider(),
          CustomForcastDayItem(),
          CustomDivider(),
          CustomForcastDayItem(),
          CustomDivider(),
          CustomForcastDayItem(),
          CustomDivider(),
          CustomForcastDayItem(),
        ],
      ),
    );
  }
}
