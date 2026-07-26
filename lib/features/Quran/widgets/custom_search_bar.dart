
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const CustomSearchBar({super.key, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      style: const TextStyle(fontSize: 16, color: Color(0xFF2C3E50)),
      decoration: InputDecoration(
        hintText: 'Search Surah, Ayat, or Translation',
        hintStyle: const TextStyle(
          color: Color(0xFF6C7A89), // لون النص التوضيحي الهادئ
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 16, right: 12),
          child: Icon(
            Icons.search_rounded,
            color: Color(0xFF5C6B73), // لون أيكونة البحث
            size: 26,
          ),
        ),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 40,
          minHeight: 40,
        ),
        filled: true,
        fillColor: Colors.white, // لون الخلفية الرمادي الفاتح
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        // إزالة الحواف الخارجية وإضافة التنعيم الدائري (Border Radius)
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
