import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketfeed_clone/screens/login_page/otp_page/otp_page.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({super.key});

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  void onTap() {}
  String? _selectedCountryCode;
  final List<String> _countryCodes = ['+91 ', '+23'];

  bool? onsubmit;

  bool onSubmit = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30))),
      child: Column(
        children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Login with mobile number",
                style:
                    GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ]),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "All your stock markets need in one place",
                  style: GoogleFonts.lato(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Row(
                children: [
                  DropdownButton(
                    value: _selectedCountryCode,
                    items: _countryCodes.map((String value) {
                      return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 12.0),
                          ));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedCountryCode = value;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12.0),
                        hintText: 'Phone Number',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 50),
                  elevation: 5,
                  backgroundColor: const Color.fromARGB(255, 31, 60, 83),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {
                setState(() {});
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => OTPpage()),
                );
              },
              child: const Text("GET OTP"))
        ],
      ),
    );
  }
}

class PhoneWidget extends StatefulWidget {
  const PhoneWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PhoneWidgetState createState() => _PhoneWidgetState();
}

class _PhoneWidgetState extends State<PhoneWidget> {
  String? _selectedCountryCode;
  final List<String> _countryCodes = ['+91 ', '+23'];

  bool? onsubmit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton(
          value: _selectedCountryCode,
          items: _countryCodes.map((String value) {
            return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(fontSize: 12.0),
                ));
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selectedCountryCode = value;
            });
          },
        ),
        const SizedBox(
          width: 300,
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(12.0),
              hintText: 'Phone Number',
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
