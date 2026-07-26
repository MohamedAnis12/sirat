import 'package:flutter/material.dart';

class ArabicQuranView extends StatefulWidget {
  const ArabicQuranView({super.key});
  @override
  State<ArabicQuranView> createState() => _QuranPageViewState();
}
class _QuranPageViewState extends State<ArabicQuranView> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose(); 
    super.dispose();
  }

  void jumpToPageNumber(int pageNumber) {
    if (pageNumber >= 1 && pageNumber <= 604) {
      _pageController.jumpToPage(pageNumber - 1);
    }
  }

  void animateToPageNumber(int pageNumber) {
    if (pageNumber >= 1 && pageNumber <= 604) {
      _pageController.animateToPage(
        pageNumber - 1,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  String _getQuranPageAsset(int pageNumber) {
    return 'assets/quran_image/$pageNumber.png';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('القرآن الكريم'),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark),
            onPressed: () {
              animateToPageNumber(1); 
            },
          ),
        ],
      ),
      body: PageView.builder(
        controller: _pageController, 
        itemCount: 604,
        reverse: true,
        itemBuilder: (context, index) {
          final int pageNumber = index + 1;

          return Image.asset(
            _getQuranPageAsset(pageNumber),
            fit: BoxFit.fill,
            alignment: AlignmentGeometry.center,
          );
        },
      ),
    );
  }
}
