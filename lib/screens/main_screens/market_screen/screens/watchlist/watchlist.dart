import 'package:flutter/material.dart';

class WatchlistTab extends StatelessWidget {
  const WatchlistTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.visibility,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Your Watchlist is Empty",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Search and add symbols to your wathclist",
          style: TextStyle(fontSize: 17, color: Colors.grey),
        ),
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: () {},
            child: Text("Search  & Add Symbol"))
      ],
    );
  }
}
