// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/resousres/widgets/customtab_container.dart';

class MarketTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 4),
              itemBuilder: (context, index) => NewsStatusContainer(),
              itemCount: 10),
        )
      ],
    );
  }
}
