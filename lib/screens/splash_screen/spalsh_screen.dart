import 'dart:async';
import 'package:flutter/material.dart';
import 'package:marketfeed_clone/screens/home_screen/home_screen.dart';
import 'package:marketfeed_clone/screens/intro_screen/intro.dart';
import 'package:marketfeed_clone/utilis/color_constant/color.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? username = '';
  Future getPhone() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    setState(() {
      username = sharedPref.getString('username');
    });
  }

  @override
  void initState() {
    super.initState();
    getPhone();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) =>
                username == null ? IntroScreenDefault() : ScreenHome(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgrndclr,
      body: Center(
        child: Image.asset(
          "assets/gif/loadinglogo.gif",
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
