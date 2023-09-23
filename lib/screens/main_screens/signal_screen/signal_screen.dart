import 'package:flutter/material.dart';
import 'package:marketfeed_clone/global_widgets/top_container.dart';

class SignalScreen extends StatefulWidget {
  const SignalScreen({super.key});

  @override
  State<SignalScreen> createState() => _SignalScreenState();
}

class _SignalScreenState extends State<SignalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.black,
                size: 25,
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
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.volume_off,
                color: Colors.black,
              ))
        ],
      ),
      body: ListView(
        children: [
          TopContainer(),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1000,
            width: double.infinity,
            color: Colors.grey.shade300,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 80, top: 15),
                  child: Text(
                    'Fastest Market Updates!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Chart patterns, market analysis, result announcements & more. Available during market hours only.',
                    style: TextStyle(color: Colors.grey.shade900),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Icon(
                  Icons.receipt_sharp,
                  size: 100,
                ),
                Text(
                  'No updates',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
