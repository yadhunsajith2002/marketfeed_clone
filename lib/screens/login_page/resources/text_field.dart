import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;

  final TextInputType? inputkeyboardType;
  TextEditingController? controller = TextEditingController();

  TextFieldWidget(
      {required this.hintText, this.controller, this.inputkeyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputkeyboardType,
      controller: controller,
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade500),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF4266c7)),
          ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 13, color: Colors.grey)),
    );
  }
}
