import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketfeed_clone/screens/home_screen/bottom_navigation/bottom_navi.dart';
import 'package:marketfeed_clone/screens/home_screen/drawer/drawer.dart';
import 'package:marketfeed_clone/screens/main_screens/market_screen/market_screen.dart';
import 'package:marketfeed_clone/global_widgets/top_container.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/resousres/screens/readsceen.dart';
import 'package:marketfeed_clone/screens/main_screens/signal_screen/signal_screen.dart';
import 'package:marketfeed_clone/screens/main_screens/strategies_screen/strategies_screen.dart';

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
    MarketScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      bottomNavigationBar: MyBottom(onTap: onTap, selectedIndex: _currentIndex),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       UserAccountsDrawerHeader(
      //           decoration: BoxDecoration(),
      //           currentAccountPicture: CircleAvatar(
      //             backgroundImage: NetworkImage(
      //                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReKC7hgv3p2XHExQUHWgv8oTYv2eUdAOWvbhMHKxdR_Ac4wMZUyg1yath1aFuedg1Giwg&usqp=CAU"),
      //           ),
      //           accountName: Text(
      //             "Yadhun",
      //             style: TextStyle(color: Colors.black),
      //             selectionColor: Colors.white,
      //           ),
      //           accountEmail: Text(
      //             "yadhun@gmail.com",
      //             style: TextStyle(color: Colors.black),
      //           )),

      //       ListTile(
      //         title: const Text('Home'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Business'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('School'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Settings'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Privacy And Policy'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Logout'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: myWidgets[_currentIndex],
    );
  }
}
