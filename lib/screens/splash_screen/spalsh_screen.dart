import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marketfeed_clone/screens/intro_screen/intro.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(milliseconds: 2530),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => IntroScreenDefault(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/gif/loadinglogo.gif",
          width: 500,
        ),
      ),
    );
  }
}
