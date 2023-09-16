import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketfeed_clone/bottom_navigation/bottom_navi.dart';
import 'package:marketfeed_clone/drawer/drawer.dart';
import 'package:marketfeed_clone/screens/market_screen/market_screen.dart';
import 'package:marketfeed_clone/screens/read_screen/read_screen.dart';
import 'package:marketfeed_clone/screens/signal_screen/signal_screen.dart';
import 'package:marketfeed_clone/screens/strategies_screen/strategies_screen.dart';

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
    ReadScreen(),
    SignalScreen(),
    MarketScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.black,
                size: 25, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),

        iconTheme: IconThemeData(color: Colors.black),
        // leading: Icon(Icons.person),
        centerTitle: true,
        title: Image.asset(
          "assets/images/marketfeed home logo.png",
          width: 200,
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: MyBottom(onTap: onTap, selectedIndex: _currentIndex),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReKC7hgv3p2XHExQUHWgv8oTYv2eUdAOWvbhMHKxdR_Ac4wMZUyg1yath1aFuedg1Giwg&usqp=CAU"),
                ),
                accountName: Text(
                  "Yadhun",
                  style: TextStyle(color: Colors.black),
                  selectionColor: Colors.white,
                ),
                accountEmail: Text(
                  "yadhun@gmail.com",
                  style: TextStyle(color: Colors.black),
                )),
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            //   child: Text('Drawer Header'),
            // ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Business'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('School'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Privacy And Policy'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: myWidgets[_currentIndex],
    );
  }
}
