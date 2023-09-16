import 'package:flutter/material.dart';

import 'package:marketfeed_clone/splash_screen/spalsh_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const type = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      // type == 0
      //     ? IntroScreenDefault()
      //     : type == 1
      //         ? IntroScreenDefault()
      //         : type == 2
      //             ? IntroScreenDefault()
      //             : IntroScreenDefault(),
      debugShowCheckedModeBanner: false,
    );
  }
}
