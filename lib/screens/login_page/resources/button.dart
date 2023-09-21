import 'package:flutter/material.dart';

class AuthButtonCustum extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;
  final bool buttoncolor;

  AuthButtonCustum(
      {required this.buttonText,
      required this.onPressed,
      this.buttoncolor = true});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: !buttoncolor
            ? BorderSide(
                width: 1,
                color: Colors.blue,
              )
            : null,
        backgroundColor:
            buttoncolor ? const Color.fromARGB(255, 10, 61, 102) : Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: buttoncolor ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
