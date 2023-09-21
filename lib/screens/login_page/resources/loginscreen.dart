import 'package:flutter/material.dart';
import 'package:marketfeed_clone/screens/login_page/resources/newlogin.dart';

class ScreenLogin extends StatelessWidget {
  static String id = 'Login_Screen';

  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
                'assets/images/WhatsApp Image 2023-08-29 at 19.25.02.jpg'),
          ),
          LoginScreenBottonContainer()
        ],
      ),
    );
  }
}
