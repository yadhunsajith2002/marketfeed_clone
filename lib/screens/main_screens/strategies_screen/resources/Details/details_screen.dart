import 'package:flutter/material.dart';
import 'package:marketfeed_clone/global_widgets/top_container.dart';
import 'package:marketfeed_clone/model/image_constant/database/databaseimages.dart';
import 'package:marketfeed_clone/model/names/names.dart';
import 'package:marketfeed_clone/screens/main_screens/strategies_screen/widgets/trade_status.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 200,
                // backgroundColor: Colors.grey,
                snap: true,
                floating: true,
                pinned: false,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(),
              ),
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 10,
                snap: true,
                floating: true,
                pinned: true,
                bottom: TabBar(
                    indicatorWeight: 4,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.grey,
                    indicatorPadding: EdgeInsets.all(1),
                    // isScrollable: true,
                    indicatorColor: Colors.blue,
                    labelColor: Colors.blue,
                    tabs: [
                      Tab(
                        text: "Traders",
                      ),
                      Tab(
                        text: "About",
                      )
                    ]),
              )
            ];
          },
          body: TabBarView(children: [
            ListView.builder(
              itemCount: DataBaseImages.avatarimages.length,
              // primary: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => TradeStatus(
                avatar: DataBaseImages.avatarimages[index],
                head: Names.names[index],
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
                },
              ),
            ),
            Center(child: Text("data"))
          ])),
    ));
  }
}
