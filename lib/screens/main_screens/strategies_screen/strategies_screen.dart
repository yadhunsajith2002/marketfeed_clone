import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:marketfeed_clone/screens/main_screens/strategies_screen/widgets/trade_status.dart';

class StrategieScreen extends StatelessWidget {
  const StrategieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/images (1).jpeg"),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        ListTile(
                          title: SizedBox(
                            width: 50,
                            child: Text(
                              "How much have you made this week?",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 33, 176, 219)),
                            ),
                          ),
                          subtitle: Text(
                            "Compare your perfomance with other traders",
                            style: GoogleFonts.lato(fontSize: 16),
                          ),
                          trailing: IconButton(
                              onPressed: () {}, icon: Icon(Icons.close)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  "Loss",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                child: Text("No Trade",
                                    style: TextStyle(color: Colors.red)),
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                child: Text("Profit",
                                    style: TextStyle(color: Colors.yellow)),
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
