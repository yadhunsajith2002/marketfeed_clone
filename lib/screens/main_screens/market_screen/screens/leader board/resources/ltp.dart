import 'package:flutter/material.dart';

class LTPColumn extends StatelessWidget {
  LTPColumn({super.key, required this.ltpVal});

  final String ltpVal;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        ltpVal,
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
    );
  }
}
