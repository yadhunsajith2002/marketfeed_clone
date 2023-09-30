import 'package:intro_slider/intro_slider.dart';

import 'package:flutter/material.dart';
import 'package:marketfeed_clone/screens/login_page/phonenumauth.dart';

class IntroScreenDefault extends StatefulWidget {
  const IntroScreenDefault({super.key});

  @override
  State<IntroScreenDefault> createState() => _IntroScreenDefaultState();
}

class _IntroScreenDefaultState extends State<IntroScreenDefault> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      ContentConfig(
        centerWidget: Image.asset("assets/onboarding/boarding2.jpg"),
        backgroundColor: Colors.white,
      ),
    );
    listContentConfig.add(
      ContentConfig(
        centerWidget: Image.asset("assets/onboarding/boarding2.jpg"),
        backgroundColor: Colors.white,
      ),
    );
  }

  void onDonePress() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => RegisterScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}
