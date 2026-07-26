import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirat/core/constants/appcolors.dart';
import 'package:sirat/features/Quran/views/arabic_quran_view.dart';

class CustomArabicQuranCard extends StatelessWidget {
  const CustomArabicQuranCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ArabicQuranView();
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CupertinoIcons.sparkles,
                      color: AppColors.secColor,
                      size: 42,
                    ),
                    Text(
                      "القرآن الكريم",
                      style: TextStyle(
                        fontSize: 24,
                        color: AppColors.mainColor,
                      ),
                    ),
                  ],
                ),
                Text(
                  "بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ(1)",
                  style: TextStyle(fontSize: 32, color: AppColors.mainColor),
                ),
                Text(
                  "ٱلۡحَمۡدُ لِلَّهِ رَبِّ ٱلۡعَٰلَمِينَ (2)",
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  "ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ (3) مَٰلِكِ يَوۡمِ ٱلدِّينِ (4)",
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  "إِيَّاكَ نَعۡبُدُ وَإِيَّاكَ نَسۡتَعِينُ (5) ٱهۡدِنَا",
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  "ٱلصِّرَٰطَ ٱلۡمُسۡتَقِيمَ (6) صِرَٰطَ ٱلَّذِينَ أَنۡعَمۡتَ",
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  "عَلَيۡهِمۡ غَيۡرِ ٱلۡمَغۡضُوبِ عَلَيۡهِمۡ",
                  style: TextStyle(fontSize: 24),
                ),
                Text("وَلَا ٱلضَّآلِّينَ (7)", style: TextStyle(fontSize: 24)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomEnglishQuranCard extends StatelessWidget {
  const CustomEnglishQuranCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.translate, color: AppColors.secColor, size: 42),
                  Text(
                    "Holy Quran",
                    style: TextStyle(fontSize: 24, color: AppColors.mainColor),
                  ),
                ],
              ),
              Text(
                "In the Name of Allah—the Most Compassionate, Most Merciful.(1)",
                style: TextStyle(fontSize: 16, color: AppColors.mainColor),
              ),
              Text(
                "All praise is for Allah—Lord of all worlds,(2)",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "the Most Compassionate, Most Merciful,(3)",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Master of the Day of Judgment.(4)",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "You ˹alone˺ we worship and You ˹alone˺ we ask for help.(5)",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Guide us along the Straight Path,(6)",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "the Path of those You have blessed—not those You are displeased with, or those who are astray.(7)",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
