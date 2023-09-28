import 'package:flutter/material.dart';
import 'package:marketfeed_clone/utilis/styles/textstyle.dart';

class RefactbaleIndicesCard extends StatelessWidget {
  RefactbaleIndicesCard(
      {super.key,
      required this.marketname,
      required this.country,
      required this.color,
      required this.rateVal,
      required this.percent,
      required this.profit});

  final String marketname;
  final bool country;

  final Color color;
  final String rateVal;
  final String percent;
  final String profit;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      height: 60,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: country == true
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                          marketname,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.red,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "USA",
                              style: StyleConstant.stylegreyclr,
                            )
                          ],
                        )
                      ])
                : Text(
                    marketname,
                    style: TextStyle(fontSize: 16),
                  ),
          ),
          Text(
            rateVal,
            style: TextStyle(fontSize: 18),
          ),
          Container(
            height: 30,
            width: 70,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(4)),
            child: Center(
              child: Text(
                percent,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Text(
            profit,
            style: TextStyle(color: color),
          )
        ],
      ),
    );
  }
}
