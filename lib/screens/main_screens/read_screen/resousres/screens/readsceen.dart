// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:marketfeed_clone/screens/main_screens/read_screen/resousres/widgets/custom_indicator.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/resousres/screens/editorial.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/resousres/screens/jargons.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/resousres/screens/market_screen.dart';

class ReadBottomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 25,
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
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
        ),
        backgroundColor: Colors.black,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              toolbarHeight: 150,
              backgroundColor: Colors.white,
              elevation: 0,
              floating: true,
              snap: true,
              pinned: true,
              // title: ReadStatus(),
              bottom: TabBar(
                isScrollable: true,
                indicator: const CustomTabIndicator(),
                labelColor: Color(0xFF4266c7),
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(text: 'Market'),
                  Tab(text: 'Editorial'),
                  Tab(text: 'Jargons'),
                ],
              ),
            )
          ],
          body: Container(
            child: TabBarView(
              children: [
                MarketTab(),
                EditorialTab(),
                JargonsTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
