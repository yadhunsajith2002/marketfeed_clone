import 'package:flutter/material.dart';

class ChangeColumn extends StatelessWidget {
  ChangeColumn({super.key, required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(4)),
          child: Center(
            child: Text(
              value,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
