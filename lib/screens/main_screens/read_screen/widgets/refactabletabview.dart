import 'package:flutter/material.dart';

class RefactbaleTabView extends StatelessWidget {
  final String image;
  final avatar;
  final name;
  final newsdes;

  const RefactbaleTabView({
    super.key,
    required this.image,
    required this.avatar,
    required this.name,
    required this.newsdes,
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
                      image: AssetImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
              height: MediaQuery.of(context).size.height * 0.25,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(avatar),
            ),
            title: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: SizedBox(
              width: 270,
              child: Text(
                newsdes,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 20),
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
