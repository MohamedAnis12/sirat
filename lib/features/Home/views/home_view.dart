import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sirat/core/constants/appcolors.dart';
import 'package:sirat/features/Home/views/widgets/custom_pray_time_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                  return CustomQuickAccessCart();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomQuickAccessCart extends StatelessWidget {
  const CustomQuickAccessCart({super.key, this.onTap});
final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: 150,
        height: 75,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(200)),
                child: Icon(CupertinoIcons.book, color: AppColors.mainColor,size: 32,),
              ),
              Text(
                "Quran",
                style: TextStyle(color: AppColors.mainColor, fontSize: 32),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
