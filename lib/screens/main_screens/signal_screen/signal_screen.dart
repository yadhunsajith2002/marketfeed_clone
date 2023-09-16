import 'package:flutter/material.dart';

class SignalScreen extends StatefulWidget {
  const SignalScreen({super.key});

  @override
  State<SignalScreen> createState() => _SignalScreenState();
}

class _SignalScreenState extends State<SignalScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 200,
              width: 350,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SizedBox(
                            width: 300,
                            child: Text(
                              'Read, Signal & Market features will be going away in 4 days',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              'But dont worry! We have some exciting new updates for you!',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade900),
                              onPressed: () {},
                              child: Text(
                                'Learn More',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'Contact Us',
                                style: TextStyle(
                                    color: Colors.blue.shade700,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 1000,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 80, top: 15),
                child: Text(
                  'Fastest Market Updates!',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Chart patterns, market analysis, result announcements & more. Available during market hours only.',
                  style: TextStyle(color: Colors.grey.shade900),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Icon(
                Icons.receipt_sharp,
                size: 100,
              ),
              Text(
                'No updates',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
