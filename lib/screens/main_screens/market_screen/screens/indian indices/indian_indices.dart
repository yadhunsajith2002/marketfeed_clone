import 'package:flutter/material.dart';
import 'package:marketfeed_clone/model/values_and_rates/values.dart';

import 'package:marketfeed_clone/screens/main_screens/market_screen/widgets/indices_card.dart';

class IndianIndices extends StatelessWidget {
  IndianIndices({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.grey.shade200,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NiftySensex(
                      head: "NIFTY 50",
                      count: 16500,
                      percentage: "-0.62 %",
                      loss: "-365.83"),
                  NiftySensex(
                      head: "SENSEX ",
                      count: 240025,
                      percentage: "-0.62 %",
                      loss: "-365.83")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Sectoral Indices",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 13,
                ),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 15,
                    );
                  },
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: rates.length,
                  itemBuilder: (context, index) => RefactbaleIndicesCard(
                      marketname: "NIFTY BANK",
                      country: false,
                      color: Color.fromARGB(255, 185, 22, 10),
                      rateVal: rates[index],
                      percent: losspercent[index],
                      profit: "-26500"),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class NiftySensex extends StatelessWidget {
  NiftySensex(
      {super.key,
      required this.head,
      required this.count,
      required this.percentage,
      required this.loss});

  final String head;
  final int count;
  final String percentage;
  final String loss;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          head,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          count.toString(),
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 185, 22, 10),
                  borderRadius: BorderRadius.circular(6)),
              child: Center(
                child: Text(
                  percentage,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              loss,
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
        Divider()
      ],
    );
  }
}
