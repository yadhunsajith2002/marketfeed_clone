// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:marketfeed_clone/screens/home_screen/home_screen.dart';
import 'package:marketfeed_clone/screens/login_page/resources/button.dart';
import 'package:marketfeed_clone/screens/login_page/resources/dropdown.dart';
import 'package:marketfeed_clone/screens/login_page/resources/text_field.dart';

class LoginScreenBottonContainer extends StatefulWidget {
  @override
  State<LoginScreenBottonContainer> createState() =>
      _LoginScreenBottonContainerState();
}

class _LoginScreenBottonContainerState
    extends State<LoginScreenBottonContainer> {
  // form field key

  //to switch between button get otp and continue button
  @override
  Widget build(BuildContext context) {
    bool onsubmit = false;

    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Login with Mobile Number',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            const SizedBox(height: 5),
            Text(
              'All your stock market needs in one place',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
            ),
            const SizedBox(height: 25),
            Text(
              'Mobile Number',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 11),
            ),
            Row(
              children: [
                const CustomDropDownButton(),
                Expanded(
                  child: TextFieldWidget(
                      inputkeyboardType: TextInputType.number,
                      hintText: 'Enter Mobile Number'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Visibility(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: AuthButtonCustum(
                  buttonText: 'GET OTP',
                  onPressed: () {
                    setState(() {
                      onsubmit = true;
                    });
                  },
                ),
              ),
            ),
            onsubmit
                ? SizedBox()
                : Container(
                    // color: Colors.black,
                    child: Visibility(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'One Time Password (OTP)',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 11),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFieldWidget(
                            hintText: '6 digit OTP',
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Waiting for OTP (Resend in 16s)',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 11),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'By confirming OTP, you agree to our Terms & Conditions',
                            style: TextStyle(
                                color: Colors.grey.shade900, fontSize: 11),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: AuthButtonCustum(
                              buttonText: 'SUBMIT OTP',
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  )
          ],
        ));
  }
}
