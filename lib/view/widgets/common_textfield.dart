import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  CommonTextField(
      {super.key,
      required this.hintText,
      required this.borderRadius,
      required this.textController});

  String hintText;
  double borderRadius;
  TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      //focusNode: _focusNode,
      decoration: InputDecoration(
        labelText: hintText,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: Colors.yellow, // Change the border color when focused
          ),
        ),
      ),
    );
  }
}
