import 'package:flutter/material.dart';

import 'package:marketfeed_clone/screens/home_screen/resources/bottom_navigation/bottom_navi.dart';
import 'package:marketfeed_clone/screens/home_screen/resources/drawer/drawer.dart';

import 'package:marketfeed_clone/screens/main_screens/market_screen/market_screen.dart';

import 'package:marketfeed_clone/screens/main_screens/read_screen/screens/readsceen.dart';
import 'package:marketfeed_clone/screens/main_screens/signal_screen/signal_screen.dart';
import 'package:marketfeed_clone/screens/main_screens/strategies_screen/strategies_screen.dart';
import 'package:marketfeed_clone/utilis/color_constant/color.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _currentIndex = 0;
  void onTap(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> myWidgets = [
    StrategieScreen(),
    ReadBottomTab(),
    SignalScreen(),
    MarketBottomScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      bottomNavigationBar: MyBottom(onTap: onTap, selectedIndex: _currentIndex),
      body: myWidgets[_currentIndex],
      drawer: MyDrawer(),
    );
  }
}
