import 'package:flutter/material.dart';
import 'package:marketfeed_clone/model/values_and_rates/values.dart';
import 'package:marketfeed_clone/screens/main_screens/market_screen/screens/leader%20board/resources/change.dart';
import 'package:marketfeed_clone/screens/main_screens/market_screen/screens/leader%20board/resources/ltp.dart';
import 'package:marketfeed_clone/screens/main_screens/market_screen/screens/leader%20board/resources/stocksymbol.dart';
import 'package:marketfeed_clone/screens/main_screens/market_screen/screens/leader%20board/widgets/LeaderTopcontainer.dart';
import 'package:marketfeed_clone/screens/main_screens/market_screen/widgets/indices_card.dart';
import 'package:marketfeed_clone/utilis/color_constant/color.dart';
import 'package:marketfeed_clone/utilis/styles/textstyle.dart';

class LeaderBoardTab extends StatefulWidget {
  LeaderBoardTab({super.key});

  @override
  State<LeaderBoardTab> createState() => _LeaderBoardTabState();
}

class _LeaderBoardTabState extends State<LeaderBoardTab> {
  int _Topvalue = 1;
  int _niftyvalue = 1;
  String value1 = "Top Gainers";
  String value2 = "Top Losers";
  String selctedVal = 'Top Gainers';
  String _selctedVal = 'Nifty 50';

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
                    InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(20))),
                            context: context,
                            builder: (context) {
                              return Container(
                                  height: 250,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 30),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Choose an option",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Icon(Icons.close))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Radio(
                                              value: 1,
                                              groupValue: _Topvalue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _Topvalue = value!;
                                                  selctedVal = value1;
                                                });
                                                Navigator.pop(context);
                                              },
                                            ),
                                            Text("Top Gainers")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Radio(
                                              value: 2,
                                              groupValue: _Topvalue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _Topvalue = value!;
                                                  selctedVal = value2;
                                                });
                                                Navigator.pop(context);
                                              },
                                            ),
                                            Text("Top Losers")
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              width: 150,
                                              height: 40,
                                              child: OutlinedButton(
                                                  onPressed: () {},
                                                  child: Text("Reset")),
                                            ),
                                            SizedBox(
                                              width: 150,
                                              height: 40,
                                              child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              ColorConstant
                                                                  .buttonclr),
                                                  onPressed: () {},
                                                  child: Text("Confirm")),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ));
                            },
                          );
                        },
                        child: BottamSheetContainer(selectval: selctedVal)),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(20))),
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Choose an option",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400)),
                                        InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Icon(Icons.close))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: _niftyvalue,
                                          onChanged: (value) {
                                            setState(() {
                                              _niftyvalue = value!;
                                              _selctedVal = "Nifty 50";
                                            });
                                            Navigator.pop(context);
                                          },
                                        ),
                                        Text("Nifty 50")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: 2,
                                          groupValue: _niftyvalue,
                                          onChanged: (value) {
                                            setState(() {
                                              _niftyvalue = value!;
                                              _selctedVal = "Nifty 100";
                                            });
                                            Navigator.pop(context);
                                          },
                                        ),
                                        Text("Nifty 100")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: 3,
                                          groupValue: _niftyvalue,
                                          onChanged: (value) {
                                            setState(() {
                                              _niftyvalue = value!;
                                              _selctedVal = "Fno";
                                            });
                                            Navigator.pop(context);
                                          },
                                        ),
                                        Text("Fno")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: 4,
                                          groupValue: _niftyvalue,
                                          onChanged: (value) {
                                            setState(() {
                                              _niftyvalue = value!;
                                              _selctedVal = "Nifty 500";
                                            });
                                            Navigator.pop(context);
                                          },
                                        ),
                                        Text("Nifty 500")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: 5,
                                          groupValue: _niftyvalue,
                                          onChanged: (value) {
                                            setState(() {
                                              _niftyvalue = value!;
                                              _selctedVal = "Nifty Auto";
                                            });
                                            Navigator.pop(context);
                                          },
                                        ),
                                        Text("Nifty Auto")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: 6,
                                          groupValue: _niftyvalue,
                                          onChanged: (value) {
                                            setState(() {
                                              _niftyvalue = value!;
                                              _selctedVal = "Nifty Bank";
                                            });
                                            Navigator.pop(context);
                                          },
                                        ),
                                        Text("Nifty Bank")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: 7,
                                          groupValue: _niftyvalue,
                                          onChanged: (value) {
                                            setState(() {
                                              _niftyvalue = value!;
                                              _selctedVal = "Nifty Pharma";
                                            });
                                            Navigator.pop(context);
                                          },
                                        ),
                                        Text("Nifty Pharma")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: 8,
                                          groupValue: _niftyvalue,
                                          onChanged: (value) {
                                            setState(() {
                                              _niftyvalue = value!;
                                              _selctedVal = "Nifty FMCG";
                                            });
                                            Navigator.pop(context);
                                          },
                                        ),
                                        Text("Nifty FMCG")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 150,
                                          height: 40,
                                          child: OutlinedButton(
                                              onPressed: () {},
                                              child: Text("Reset")),
                                        ),
                                        SizedBox(
                                          width: 150,
                                          height: 40,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      ColorConstant.buttonclr),
                                              onPressed: () {},
                                              child: Text("Confirm")),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: BottamSheetContainer(selectval: _selctedVal)),
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
                      ChangeColumn(
                        value: "+4.52 %",
                        onchange: selctedVal == value1 ? true : false,
                      )
                    ]),
                    TableRow(children: [
                      StockSymbolColumn(name: "ASIANPAINTS"),
                      LTPColumn(ltpVal: "1503,12"),
                      ChangeColumn(
                        value: "+8.52 %",
                        onchange: selctedVal == value1 ? true : false,
                      )
                    ]),
                    TableRow(children: [
                      StockSymbolColumn(name: "ONGC"),
                      LTPColumn(ltpVal: "621,12"),
                      ChangeColumn(
                        value: "+7.52 %",
                        onchange: selctedVal == value1 ? true : false,
                      )
                    ]),
                    TableRow(children: [
                      StockSymbolColumn(name: "BHARATH"),
                      LTPColumn(ltpVal: "750,12"),
                      ChangeColumn(
                        value: "+4.52 %",
                        onchange: selctedVal == value1 ? true : false,
                      )
                    ]),
                    TableRow(children: [
                      StockSymbolColumn(name: "HINDHUSTAN"),
                      LTPColumn(ltpVal: "8521,12"),
                      ChangeColumn(
                        value: "+8.52 %",
                        onchange: selctedVal == value1 ? true : false,
                      )
                    ]),
                    TableRow(children: [
                      StockSymbolColumn(name: "LPG"),
                      LTPColumn(ltpVal: "9641,12"),
                      ChangeColumn(
                        value: "+3.52 %",
                        onchange: selctedVal == value1 ? true : false,
                      )
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
