import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sirat/core/constants/appcolors.dart';
import 'package:sirat/features/Quran/views/quran_ar_and_en_view.dart';

class CustomSuraCard extends StatelessWidget {
  const CustomSuraCard({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return QuranArAndEnView();
              },
            ),
          );
        },
        child: Container(
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
                  child: Center(child: Text("$index", style: TextStyle(fontSize: 24))),
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
        ),
      ),
    );
  }
}