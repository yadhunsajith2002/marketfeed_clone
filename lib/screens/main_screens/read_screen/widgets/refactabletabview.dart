import 'package:flutter/material.dart';

class RefactbaleTabView extends StatelessWidget {
  final String imagePath;
  final publisherPhoto;
  final publisherName;
  final newsDescription;

  const RefactbaleTabView({
    super.key,
    required this.imagePath,
    required this.publisherPhoto,
    required this.publisherName,
    required this.newsDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
              height: MediaQuery.of(context).size.height * 0.2,
              // height: 150,
              // width: 350,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(publisherPhoto),
            ),
            title: Text(
              publisherName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: SizedBox(
              width: 270,
              child: Text(
                newsDescription,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 5, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Today . ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '5 mins read',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.bookmark_border)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
