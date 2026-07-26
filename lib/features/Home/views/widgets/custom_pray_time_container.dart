import 'package:donut_chart/donut_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sirat/core/constants/appcolors.dart';

class CustomPrayTimeContainer extends StatelessWidget {
  const CustomPrayTimeContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "NEXT PRAYER",
                style: TextStyle(color: AppColors.secColor, fontSize: 16),
              ),
              Text(
                "Duhr",
                style: TextStyle(color: AppColors.mainColor, fontSize: 64),
              ),
              Text(
                "in 1h 55m (1:22 PM)",
                style: TextStyle(color: AppColors.mainColor, fontSize: 16),
              ),
              Gap(5),

              Stack(
                alignment: Alignment.center,
                children: [
                  DonutChartWidget(
                    tooltipRadius: 0,
                    size: 200,
                    strokeWidth: 10,
                    tooltipLineLength: 10,
                    data: [
                      DonutSectionModel(
                        value: 60,
                        color: const Color.fromARGB(245, 245, 245, 245),
                        label: '',
                      ),
                      DonutSectionModel(
                        value: 40,
                        color: AppColors.secColor,
                        label: '',
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize:
                        MainAxisSize.min,
                    children: [
                      Text(
                        "40%",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.mainColor,
                        ),
                      ),
                      const Text(
                        "PROGRESS",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
