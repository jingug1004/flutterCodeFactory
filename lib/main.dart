import 'package:flutter/material.dart';
// import 'package:hello_world/blogWebApp/screen/blog_home_screen.dart';
import 'package:hello_world/imageCarousel/carouselScreen/carousel_home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: CarouselHomeScreen(),
    ),
  );
}
//
// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           body: Container(
//         decoration: BoxDecoration(
//           color: Color(0xFFF99231),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//               Image.asset('assets/logo.png', width: 200),
//               CircularProgressIndicator(
//                 valueColor: AlwaysStoppedAnimation(
//                   Colors.white,
//                 ),
//               ),
//             ])
//           ],
//         ),
//       )),
//     );
//   }
// }
