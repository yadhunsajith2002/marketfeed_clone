import 'package:intro_slider/intro_slider.dart';
import 'package:marketfeed_clone/login_page/login_page.dart';
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
        // styleDescription: TextStyle(
        //     fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
        // title: "MARKETFEED,",
        heightImage: 500,
        // styleTitle: TextStyle(
        //     fontSize: 28, fontWeight: FontWeight.w600, color: Colors.black),
        // description:
        //     "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        pathImage: "assets/onboarding/boarding2.jpg",
        backgroundColor: Colors.white,
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        heightImage: 500,
        // styleDescription: TextStyle(
        //     fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
        // title: "MARKETFEED,",
        // styleTitle: TextStyle(
        //     fontSize: 28, fontWeight: FontWeight.w600, color: Colors.black),
        // description:
        //     "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        pathImage: "assets/onboarding/boarding.jpg",
        backgroundColor: Colors.white,
      ),
    );
    // listContentConfig.add(
    //   const ContentConfig(
    //     styleDescription: TextStyle(
    //         fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
    //     title: "MARKETFEED,",
    //     styleTitle: TextStyle(
    //         fontSize: 28, fontWeight: FontWeight.w600, color: Colors.black),
    //     description:
    //         "Allow miles wound place the leave had. To sitting subject no improve studied limited",
    //     pathImage: "assets/onboarding/on2.png",
    //     backgroundColor: Colors.white,
    //   ),
    // );
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
