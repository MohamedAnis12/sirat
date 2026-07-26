import 'package:flutter/material.dart';

class QuickAccessModel {
  final IconData icon;
  final String title;
  final void Function()? onTap;

  QuickAccessModel({
    required this.icon,
    required this.title,
    this.onTap,
  });
}