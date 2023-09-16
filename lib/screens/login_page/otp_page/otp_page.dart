import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:marketfeed_clone/screens/home_screen/home_screen.dart';

class OTPpage extends StatefulWidget {
  OTPpage({super.key});

  @override
  State<OTPpage> createState() => _OTPpageState();
}

class _OTPpageState extends State<OTPpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.asset("assets/images/marketfeed home logo.png"),
          ),
          SizedBox(
            height: 250,
          ),
          OTPContainer(),
        ],
      ),
    ));
  }
}

class OTPContainer extends StatelessWidget {
  const OTPContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "One Time Password(OTP)",
                    style: GoogleFonts.lato(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  PhoneWidget(),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      "By confirming otp, you agree to our terms and conditions"),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(350, 50),
                    elevation: 5,
                    backgroundColor: Color.fromARGB(255, 31, 60, 83),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => ScreenHome()));
                },
                child: Text("SUBMIT")),
          ],
        ),
      ),
    );
  }
}

class PhoneWidget extends StatefulWidget {
  @override
  _PhoneWidgetState createState() => _PhoneWidgetState();
}

class _PhoneWidgetState extends State<PhoneWidget> {
  // String? _selectedCountryCode;
  // List<String> _countryCodes = ['+91', '+23'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // DropdownButton(
        //   value: _selectedCountryCode,
        //   items: _countryCodes.map((String value) {
        //     return new DropdownMenuItem<String>(
        //         value: value,
        //         child: new Text(
        //           value,
        //           style: TextStyle(fontSize: 12.0),
        //         ));
        //   }).toList(),
        //   onChanged: (value) {
        //     setState(() {
        //       _selectedCountryCode = value;
        //     });
        //   },
        // ),
        Container(
          width: 300,
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(12.0),
              hintText: 'Enter 6 Digit OTP',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        )
      ],
    );
  }
}
