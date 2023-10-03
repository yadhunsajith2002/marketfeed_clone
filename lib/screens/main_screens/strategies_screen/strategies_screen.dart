import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketfeed_clone/model/image_constant/database/databaseimages.dart';
import 'package:marketfeed_clone/model/names/names.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/readsceen.dart';
import 'package:marketfeed_clone/screens/main_screens/strategies_screen/resources/Details/details_screen.dart';

import 'package:marketfeed_clone/screens/main_screens/strategies_screen/widgets/trade_status.dart';
import 'package:marketfeed_clone/utilis/color_constant/color.dart';

class StrategieScreen extends StatelessWidget {
  const StrategieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.person,
            color: Colors.black,
            size: 25,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        iconTheme: IconThemeData(color: Colors.black),
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
            height: MediaQuery.of(context).size.height * 0.5,
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
                    "Follow Top Strategies 🚀",
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
          ListView.builder(
            itemCount: DataBaseImages.avatarimages.length,
            primary: false,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => TradeStatus(
              avatar: DataBaseImages.avatarimages[index],
              head: Names.names[index],
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
