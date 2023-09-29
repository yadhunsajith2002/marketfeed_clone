import 'package:flutter/material.dart';
import 'package:marketfeed_clone/utilis/color_constant/color.dart';
import 'package:marketfeed_clone/utilis/styles/textstyle.dart';

class BookMarkScreen extends StatelessWidget {
  const BookMarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorConstant.blackclr,
            )),
        backgroundColor: ColorConstant.textColor,
        title: Text(
          "My Bookmarks",
          style: StyleConstant.blacktextclr,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Icon(
              Icons.bookmarks_outlined,
              size: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "You Have not bookmarked anything yet!",
              style: StyleConstant.blacktextclr,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Start bookmarking your favourite articles and read it anytime or on-the-go",
              style: TextStyle(color: Colors.grey, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
