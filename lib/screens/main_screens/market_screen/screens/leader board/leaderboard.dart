import 'package:flutter/material.dart';
import 'package:marketfeed_clone/model/values_and_rates/values.dart';
import 'package:marketfeed_clone/screens/main_screens/market_screen/screens/leader%20board/resources/change.dart';
import 'package:marketfeed_clone/screens/main_screens/market_screen/screens/leader%20board/resources/ltp.dart';
import 'package:marketfeed_clone/screens/main_screens/market_screen/screens/leader%20board/resources/stocksymbol.dart';
import 'package:marketfeed_clone/screens/main_screens/market_screen/screens/leader%20board/widgets/LeaderTopcontainer.dart';
import 'package:marketfeed_clone/screens/main_screens/market_screen/widgets/indices_card.dart';
import 'package:marketfeed_clone/utilis/color_constant/color.dart';
import 'package:marketfeed_clone/utilis/styles/textstyle.dart';

class LeaderBoardTab extends StatelessWidget {
  LeaderBoardTab({super.key});

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
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BottamSheetContainer(selectval: "Top Gainers"),
                    SizedBox(
                      width: 10,
                    ),
                    BottamSheetContainer(selectval: "Nifty 50"),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: {
                    0: FractionColumnWidth(0.5),
                    1: FractionColumnWidth(0.25),
                    2: FractionColumnWidth(0.25)
                  },
                  border: TableBorder.all(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade600,
                    width: 0.2,
                  ),
                  children: [
                    TableRow(children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "Stock Symbol",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "LTP",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Change",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      StockSymbolColumn(name: "BAJAJFINSV"),
                      LTPColumn(ltpVal: "2540,12"),
                      ChangeColumn(value: "+4.52 %")
                    ]),
                    TableRow(children: [
                      StockSymbolColumn(name: "ASIANPAINTS"),
                      LTPColumn(ltpVal: "1503,12"),
                      ChangeColumn(value: "+8.52 %")
                    ]),
                    TableRow(children: [
                      StockSymbolColumn(name: "ONGC"),
                      LTPColumn(ltpVal: "621,12"),
                      ChangeColumn(value: "+7.52 %")
                    ]),
                    TableRow(children: [
                      StockSymbolColumn(name: "BHARATH"),
                      LTPColumn(ltpVal: "750,12"),
                      ChangeColumn(value: "+4.52 %")
                    ]),
                    TableRow(children: [
                      StockSymbolColumn(name: "HINDHUSTAN"),
                      LTPColumn(ltpVal: "8521,12"),
                      ChangeColumn(value: "+8.52 %")
                    ]),
                    TableRow(children: [
                      StockSymbolColumn(name: "LPG"),
                      LTPColumn(ltpVal: "9641,12"),
                      ChangeColumn(value: "+3.52 %")
                    ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
