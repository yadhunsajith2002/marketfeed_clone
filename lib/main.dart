import 'package:flutter/material.dart';
import 'package:marketfeed_clone/screens/home_screen/resources/bottom_navigation/bottom_navi.dart';
import 'package:marketfeed_clone/screens/home_screen/home_screen.dart';

import 'package:marketfeed_clone/screens/splash_screen/spalsh_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
