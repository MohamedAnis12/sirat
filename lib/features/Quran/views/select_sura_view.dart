import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sirat/core/constants/appcolors.dart';
import 'package:sirat/features/Quran/views/quran_ar_and_en_view.dart';
import 'package:sirat/features/Quran/widgets/custom_search_bar.dart';
import 'package:sirat/features/Quran/widgets/custom_sura_card.dart';

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
              children: [
                Gap(20),
                CustomSearchBar(),
                Gap(20),

                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CustomSuraCard(index: index+1,);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
