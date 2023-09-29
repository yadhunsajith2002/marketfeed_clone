// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:marketfeed_clone/global_widgets/top_container.dart';

import 'package:marketfeed_clone/screens/main_screens/read_screen/screens/editorial.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/screens/jargons.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/screens/market_screen.dart';

class ReadBottomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(
            icon: const Icon(
              Icons.person,
              color: Colors.black,
              size: 25, // Changing Drawer Icon Size
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
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
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Color(0xFF4266c7),
                unselectedLabelColor: Colors.grey.shade500,
                tabs: const [
                  Tab(text: 'Market'),
                  Tab(text: 'Editorial'),
                  Tab(text: 'Jargons'),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
