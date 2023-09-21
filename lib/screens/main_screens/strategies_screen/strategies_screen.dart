import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:marketfeed_clone/screens/main_screens/strategies_screen/tradestatuscontainer/trade_status.dart';

class StrategieScreen extends StatelessWidget {
  const StrategieScreen({super.key});

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
      body: ListView(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            // color: Colors.grey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 170,
                    width: 380,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyCbFTIlTdSWxlgt7dkTYoxk6kS2QMCjFH2Q&usqp=CAU"),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    height: 170,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 250,
                                child: Text(
                                  "How much have need this week?",
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: const Color.fromARGB(
                                          255, 57, 77, 112)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.close))
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 22),
                              child: Text(
                                "Compare your perfomance with other traders",
                                style: GoogleFonts.lato(),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                child: Text("Loss"),
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                child: Text("No Trade"),
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                child: Text("Profit"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 50,
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Follow Top Strategies",
                    style: GoogleFonts.lato(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 15,
                    child: Icon(Icons.question_mark),
                  )
                ],
              ),
            ),
          ),
          TradeStatus(),
          TradeStatus(),
          TradeStatus(),
          TradeStatus(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
