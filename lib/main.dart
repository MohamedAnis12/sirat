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
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Root(),
    );
  }
}
//assets/quran_image/1.png