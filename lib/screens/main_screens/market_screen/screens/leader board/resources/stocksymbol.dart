import 'package:flutter/material.dart';

class StockSymbolColumn extends StatelessWidget {
  StockSymbolColumn({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
