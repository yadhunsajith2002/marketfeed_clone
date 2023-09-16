import 'package:flutter/material.dart';

class ReadScreen extends StatefulWidget {
  const ReadScreen({super.key});

  @override
  State<ReadScreen> createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(
      length: 3,
      vsync: this,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 200,
              width: 350,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 10),
                        child: SizedBox(
                            width: 300,
                            child: Text(
                              'Read, Signal & Market features will be going away in 4 days',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: 300,
                          child: Text(
                            'But dont worry! We have some exciting new updates for you!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade900),
                          onPressed: () {},
                          child: Text(
                            'Learn More',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Contact Us',
                            style: TextStyle(
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        width: 60,
                      )
                    ],
                  ),
                ],
              )),
        ),
        Container(
          width: double.maxFinite,
          child: Align(
            alignment: Alignment.center,
            child: TabBar(
                padding: EdgeInsets.only(left: 60, right: 60),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 5,
                indicatorColor: Color.fromARGB(255, 54, 125, 184),
                labelPadding: EdgeInsets.all(10),
                labelColor: Colors.blue.shade800,
                unselectedLabelColor: Colors.black54,
                controller: _tabcontroller,
                tabs: [
                  Tab(
                    text: "Markets",
                  ),
                  Tab(
                    text: "Editorial",
                  ),
                  Tab(
                    text: "jargons",
                  ),
                ]),
          ),
        ),
        Divider(
          thickness: 7,
        ),
        Container(
          width: double.maxFinite,
          height: 300,
          child: TabBarView(controller: _tabcontroller, children: [
            Text("Hii"),
            Text("Hii"),
            Text("Hii"),
          ]),
        )
      ],
    );
  }
}
