import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirat/core/constants/appcolors.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CustomQuranCard()],
        ),
      ),
    );
  }
}

class CustomQuranCard extends StatelessWidget {
  const CustomQuranCard({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(CupertinoIcons.sparkles,color: AppColors.secColor,size: 42,),
                  Text("القرآن الكريم",style: TextStyle(fontSize: 24,color: AppColors.mainColor),),
                ],
              )
          
            ],
          ),
        ),
      ),
    );
  }
}
