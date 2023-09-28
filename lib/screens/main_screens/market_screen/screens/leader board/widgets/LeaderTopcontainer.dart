import 'package:flutter/material.dart';
import 'package:marketfeed_clone/utilis/color_constant/color.dart';

class BottamSheetContainer extends StatelessWidget {
  BottamSheetContainer({super.key, required this.selectval});

  final String selectval;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(selectval),
          Container(
            decoration: BoxDecoration(
                color: ColorConstant.primaryColor, shape: BoxShape.circle),
            child: Icon(Icons.keyboard_arrow_down),
          )
        ],
      ),
    );
  }
}
