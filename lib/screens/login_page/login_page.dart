import 'package:flutter/material.dart';
import 'package:marketfeed_clone/screens/login_page/login_container.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Image.asset(
                  'assets/images/WhatsApp Image 2023-08-29 at 19.25.02.jpg'),
            ),
          ),
          const SizedBox(
            height: 250,
          ),
          const LoginContainer(),
        ],
      ),
    );
  }
}
