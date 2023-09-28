import 'package:flutter/material.dart';
import 'package:marketfeed_clone/model/values_and_rates/values.dart';
import 'package:marketfeed_clone/screens/main_screens/market_screen/widgets/indices_card.dart';
import 'package:marketfeed_clone/utilis/styles/textstyle.dart';

class GlobalIndices extends StatelessWidget {
  GlobalIndices({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.grey.shade200,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "last updated on Sat 26 Aug 11:50 PM",
                style: StyleConstant.stylegreyclr,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "US Markets",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: rates.length,
                    itemBuilder: (context, index) => RefactbaleIndicesCard(
                        marketname: "DOW JONES",
                        country: true,
                        color: Colors.green,
                        rateVal: rates[index],
                        percent: gainpercent[index],
                        profit: "+247.48"),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
