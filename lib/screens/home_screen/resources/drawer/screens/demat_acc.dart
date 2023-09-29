import 'package:flutter/material.dart';
import 'package:marketfeed_clone/utilis/styles/textstyle.dart';

class DematAccountScreen extends StatelessWidget {
  const DematAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.5,
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/background/watercolor-paint-background-holi-festival.jpg"))),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: Colors.black, width: 1.5)),
                        child: Icon(Icons.close)),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 200,
                  child: Text("Open Demat Account through marketfeed",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  height: 400,
                  width: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/background/vecteezy_3d-businessman-holding-folder-great-for-business-brochures_22484132_247 (1).png"))),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background/demat.png")),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
