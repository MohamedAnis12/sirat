import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sirat/core/constants/appcolors.dart';
import 'package:sirat/features/Home/models/quick_access_model.dart';
import 'package:sirat/features/Home/views/widgets/custom_pray_time_container.dart';
import 'package:sirat/features/Home/views/widgets/custom_quick_access_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static List<QuickAccessModel> modelList = [
    QuickAccessModel(icon: CupertinoIcons.book, title: 'Quran', onTap: () {}),
    QuickAccessModel(
      icon: CupertinoIcons.checkmark_alt,
      title: 'Azkar',
      onTap: () {},
    ),
    QuickAccessModel(
      icon: CupertinoIcons.sparkles,
      title: 'Hadith',
      onTap: () {},
    ),
    QuickAccessModel(
      icon: CupertinoIcons.compass,
      title: 'Qibla',
      onTap: () {},
    ),
    QuickAccessModel(icon: CupertinoIcons.time, title: 'Prayers', onTap: () {}),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.location_on, color: AppColors.mainColor, size: 42),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("London ,UK", style: TextStyle(fontSize: 32)),
            Image.asset("assets/sirat_arabic_logo.png", height: 64),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20),
              CustomPrayTimeContainer(),
              Gap(5),
              Text("Quick Access", style: TextStyle(fontSize: 32)),

              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1.3,
                ),
                itemBuilder: (context, index) {
                  return CustomQuickAccessCard(model: modelList[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
