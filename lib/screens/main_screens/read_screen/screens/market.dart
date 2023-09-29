import 'package:flutter/material.dart';
import 'package:marketfeed_clone/model/image_constant/database/databaseimages.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/widgets/refactabletabview.dart';

class MarketTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 4),
              itemBuilder: (context, index) => RefactbaleTabView(
                  image: DataBaseImages.readTabCarddataList[index]['image'],
                  avatar: DataBaseImages.readTabCarddataList[index]
                      ['avatarphoto'],
                  name: DataBaseImages.readTabCarddataList[index]['Name'],
                  newsdes: DataBaseImages.readTabCarddataList[index]
                      ['Description']),
              itemCount: DataBaseImages.readTabCarddataList.length),
        )
      ],
    );
  }
}
