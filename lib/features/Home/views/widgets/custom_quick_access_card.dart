import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirat/core/constants/appcolors.dart';
import 'package:sirat/features/Home/models/quick_access_model.dart';

class CustomQuickAccessCard extends StatelessWidget {
  const CustomQuickAccessCard({super.key, required this.model});
final QuickAccessModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:model.onTap ,
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
                child: Icon(model.icon, color: AppColors.mainColor,size: 32,),
              ),
              Text(
                model.title,
                style: TextStyle(color: AppColors.mainColor, fontSize: 32),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
