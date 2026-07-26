import 'package:flutter/material.dart';
import 'package:sirat/Root.dart';

void main() {
  runApp(const Sirat());
}

class Sirat extends StatelessWidget {
  const Sirat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(245, 245, 245, 245)
      ,appBarTheme: AppBarThemeData(
        backgroundColor: const Color.fromARGB(245, 245, 245, 245)
      )),
      home: Root(),
    );
  }
}
//assets/quran_image/1.png