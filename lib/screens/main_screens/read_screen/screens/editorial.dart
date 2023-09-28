// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/widgets/refactabletabview.dart';

// ignore: must_be_immutable
class EditorialTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map> editorailCarddataList = [
      {
        'image': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'avatarphoto': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'Name': 'By Ajay Ajith',
        'Description':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis,Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'image': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'avatarphoto': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'Name': 'By Ajay Ajith',
        'Description':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis,Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'image': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'avatarphoto': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'Name': 'By Ajay Ajith',
        'Description':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis,Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'image': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'avatarphoto': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'Name': 'By Ajay Ajith',
        'Description':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'image': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'avatarphoto': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'Name': 'By Ajay Ajith',
        'Description':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'image': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'avatarphoto': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'Name': 'By Ajay Ajith',
        'Description':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'image': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'avatarphoto': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'Name': 'By Ajay Ajith',
        'Description':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'image': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'avatarphoto': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'Name': 'By Ajay Ajith',
        'Description':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'image': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'avatarphoto': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'Name': 'By Ajay Ajith',
        'Description':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'image': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'avatarphoto': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'Name': 'By Ajay Ajith',
        'Description':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'image': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'avatarphoto': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'Name': 'By Ajay Ajith',
        'Description':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'image': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'avatarphoto': 'assets/images/s25vqbus2h9bzpuf_1695475660.webp',
        'Name': 'By Ajay Ajith',
        'Description':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
    ];
    // List readmarketCardDataList = marketCardDataList.reversed.toList();
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 4),
              itemBuilder: (context, index) => RefactbaleTabView(
                  imagePath: editorailCarddataList[index]['image'],
                  publisherPhoto: editorailCarddataList[index]['avatarphoto'],
                  publisherName: editorailCarddataList[index]['Name'],
                  newsDescription: editorailCarddataList[index]['Description']),
              itemCount: editorailCarddataList.length),
        )
      ],
    );
  }
}
