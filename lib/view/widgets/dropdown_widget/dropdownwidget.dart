import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class DropdownWidget extends StatelessWidget {
 final String hintText;
const  DropdownWidget({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 35,
        width: 400,
        child: Center(
          child: DropdownSearch(
            autoValidateMode: AutovalidateMode.always,
            onChanged: (value) {},
            dropdownDecoratorProps: DropDownDecoratorProps(
                baseStyle: GoogleFonts.poppins(
                    fontSize: 13, color: Colors.black.withOpacity(0.7))),
            selectedItem: hintText,
          ),
        ));
  }
}
