// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Jargontab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map> marketCardDataList = [
      {
        'imagePath': 'assets/onboarding/on4.png',
        'publisherPhoto': 'assets/onboarding/on4.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imagePath': 'assets/onboarding/on4.png',
        'publisherPhoto': 'assets/onboarding/on4.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imagePath': 'assets/onboarding/on4.png',
        'publisherPhoto': 'assets/onboarding/on4.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imagePath': 'assets/onboarding/on4.png',
        'publisherPhoto': 'assets/onboarding/on4.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imagePath': 'assets/onboarding/on4.png',
        'publisherPhoto': 'assets/onboarding/on4.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imagePath': 'assets/onboarding/on4.png',
        'publisherPhoto': 'assets/onboarding/on4.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imagePath': 'assets/onboarding/on4.png',
        'publisherPhoto': 'assets/onboarding/on4.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
      {
        'imagePath': 'assets/onboarding/on4.png',
        'publisherPhoto': 'assets/onboarding/on4.png',
        'publisherName': 'By Ajay Ajith',
        'newsDescription':
            'Indias Inflation Drops. US CPI Tonight - Pre Market Analysis',
      },
    ];
    // List readmarketCardDataList = marketCardDataList.reversed.toList();
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 4),
              itemBuilder: (context, index) => ReadMarketTabRefacted(
                  imagePath: marketCardDataList[index]['imagePath'],
                  publisherPhoto: marketCardDataList[index]['publisherPhoto'],
                  publisherName: marketCardDataList[index]['publisherName'],
                  newsDescription: marketCardDataList[index]
                      ['newsDescription']),
              itemCount: marketCardDataList.length),
        )
      ],
    );
  }
}

class ReadMarketTabRefacted extends StatelessWidget {
  final String imagePath;
  final publisherPhoto;
  final publisherName;
  final newsDescription;

  const ReadMarketTabRefacted({
    super.key,
    required this.imagePath,
    required this.publisherPhoto,
    required this.publisherName,
    required this.newsDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
              height: 150,
              width: 350,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(publisherPhoto),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    publisherName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                SizedBox(
                  width: 270,
                  child: Text(
                    newsDescription,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 5),
            child: Row(
              children: [
                Text(
                  'Today . ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '5 mins read',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
