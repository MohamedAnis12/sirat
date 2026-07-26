import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirat/core/constants/appcolors.dart';
import 'package:sirat/features/Azkar/views/azkar_view.dart';
import 'package:sirat/features/Home/views/home_view.dart';
import 'package:sirat/features/Qibla/views/qibla_view.dart';
import 'package:sirat/features/Quran/views/select_sura_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  List<Widget> pages = [HomeView(), SelectSuraView(), AzkarView(),QiblaView()];
  PageController controller = PageController();
  int currentPage = 0;

  @override
  void initState() {
    controller = PageController(initialPage: currentPage);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,

        physics: NeverScrollableScrollPhysics(),
        children: pages,
      ),

      bottomNavigationBar: Container(
         height: 75,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
        ),
        child: Center(
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.shade500,
            currentIndex: currentPage,
            elevation: 0,
            onTap: (value) {
              setState(() {
                currentPage = value;
                controller.jumpToPage(value);
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.book),
                label: "Quran",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.sparkles),
                label: "Azkar",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.compass),
                label: "Qibla",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
