import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sirat/core/constants/appcolors.dart';
import 'package:sirat/features/Quran/widgets/custom_search_bar.dart';

class SelectSuraView extends StatelessWidget {
  const SelectSuraView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.location_on,
            color: AppColors.mainColor,
            size: 42,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("London ,UK", style: TextStyle(fontSize: 32)),
              Image.asset("assets/sirat_arabic_logo.png", height: 64),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [Gap(20), CustomSearchBar(), Gap(20), CustomSuraCard()],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSuraCard extends StatelessWidget {
  const CustomSuraCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                borderRadius: BorderRadius.circular(200),
              ),
              child: Center(child: Text("1", style: TextStyle(fontSize: 24))),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Al-Fatihah",
                  style: TextStyle(fontSize: 24, color: AppColors.mainColor),
                ),
                Text("Mecca"),
                Text("7 verses"),
              ],
            ),

            Gap(30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "الفاتحة",
                  style: TextStyle(fontSize: 24, color: AppColors.mainColor),
                ),
                Text("مكية"),
                Text("7 ايات"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
