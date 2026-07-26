import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sirat/core/constants/appcolors.dart';
import 'package:sirat/features/Quran/widgets/CustomQuranCard.dart';

class QuranArAndEnView extends StatelessWidget {
  const QuranArAndEnView({super.key});

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Gap(20),
              CustomArabicQuranCard(),
              Gap(20),
              CustomEnglishQuranCard(),
            ],
          ),
        ),
      ),
    );
  }
}
