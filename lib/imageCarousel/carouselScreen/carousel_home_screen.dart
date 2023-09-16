import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CarouselHomeScreen extends StatefulWidget {
  const CarouselHomeScreen({Key? key}) : super(key: key);

  @override
  State<CarouselHomeScreen> createState() => _CarouselHomeScreen();
}

class _CarouselHomeScreen extends State<CarouselHomeScreen> {
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 3), (timer) {
      // print('실행!');
      int? nextPage = pageController.page?.toInt();

      if (nextPage == null) {
        return;
      }

      if (nextPage == 4) {
        nextPage = 0;
      } else {
        nextPage++;
      }

      pageController.animateToPage(nextPage,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [1, 2, 3, 4, 5]
            .map((number) => Image.asset(
                  'lib/imageCarousel/carouselAsset/carouselImg/image_$number.jpeg',
                  fit: BoxFit.cover,
                ))
            .toList(),
      ),
    );
  }
}
