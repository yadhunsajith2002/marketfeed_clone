import 'package:flutter/material.dart';

class ChangeColumn extends StatelessWidget {
  ChangeColumn({super.key, required this.value, required this.onchange});

  final String value;

  final bool onchange;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              color: onchange ? Colors.green : Colors.red,
              borderRadius: BorderRadius.circular(4)),
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
