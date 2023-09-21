import 'package:flutter/material.dart';

class NewsStatusContainer extends StatefulWidget {
  const NewsStatusContainer({super.key});

  @override
  State<NewsStatusContainer> createState() => _NewsStatusContainerState();
}

class _NewsStatusContainerState extends State<NewsStatusContainer> {
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
                      image: AssetImage('assets/onboarding/on2.png'),
                      fit: BoxFit.cover),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'By Ben Benny',
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
                    'RIL Parters With NVIDIA to Develop AI Infra - Top Imdian Market Updates',
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
