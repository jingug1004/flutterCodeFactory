import 'package:flutter/material.dart';
import 'package:hello_world/random/diceConst/dice_colors.dart';
import 'package:hello_world/random/diceScreen/dice_root_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          sliderTheme: SliderThemeData(
            thumbColor: primaryColor,
            activeTrackColor: primaryColor,
            inactiveTrackColor: primaryColor.withOpacity(0.3),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: primaryColor,
              unselectedItemColor: secondaryColor,
              backgroundColor: backgroundColor)),
      home: DiceRootScreen(),
    ),
  );
}
// void main() {
//   runApp(
//     MaterialApp(
//       theme: ThemeData(
//           fontFamily: 'sunflower',
//           textTheme: TextTheme(
//             displayLarge: TextStyle(
//                 color: Colors.white,
//                 fontSize: 80.0,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: 'parisienne'),
//             displayMedium: TextStyle(
//               color: Colors.white,
//               fontSize: 50.0,
//               fontWeight: FontWeight.w700,
//             ),
//             bodyLarge: TextStyle(color: Colors.white, fontSize: 30.0),
//             bodyMedium: TextStyle(color: Colors.white, fontSize: 20.0),
//           )),
//       home: UandiHomeScreen(),
//     ),
//   );
// }
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
