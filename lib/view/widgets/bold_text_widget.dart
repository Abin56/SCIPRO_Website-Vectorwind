import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoldTextWidget extends StatelessWidget {
  BoldTextWidget({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      style: GoogleFonts.montserrat(
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
