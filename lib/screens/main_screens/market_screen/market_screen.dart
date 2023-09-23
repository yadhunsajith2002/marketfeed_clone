// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:marketfeed_clone/global_widgets/top_container.dart';

import 'package:marketfeed_clone/screens/main_screens/read_screen/resousres/screens/editorial.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/resousres/screens/jargons.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/resousres/screens/market_screen.dart';

class MarketBottomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              leading: null,
              flexibleSpace: TopContainer(),
              toolbarHeight: 220,
              backgroundColor: Colors.white,
              elevation: 0,
              floating: false,
              snap: false,
              pinned: false,
            ),
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              floating: true,
              snap: true,
              pinned: true,
              bottom: TabBar(
                isScrollable: true,
                indicatorWeight: 5,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                // indicator: CustomTabIndicator(indicatorHeight: 10,),
                labelColor: Color(0xFF4266c7),
                unselectedLabelColor: Colors.grey.shade500,
                tabs: const [
                  Tab(text: 'Watchlist'),
                  Tab(text: 'Indian Indices'),
                  Tab(text: 'Global Indices '),
                  Tab(text: 'Leaderboard'),
                ],
              ),
            )
          ],
          body: SizedBox(
            child: TabBarView(
              children: [
                MarketTab(),
                EditorialTab(),
                Jargontab(),
                EditorialTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
