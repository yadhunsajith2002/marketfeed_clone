import 'package:intro_slider/intro_slider.dart';
import 'package:marketfeed_clone/screens/login_page/login_page.dart';
import 'package:flutter/material.dart';

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
      const ContentConfig(
        heightImage: 500,
        pathImage: "assets/onboarding/boarding2.jpg",
        backgroundColor: Colors.white,
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        heightImage: 500,
        pathImage: "assets/onboarding/boarding.jpg",
        backgroundColor: Colors.white,
      ),
    );
  }

  void onDonePress() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginPage()));
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
