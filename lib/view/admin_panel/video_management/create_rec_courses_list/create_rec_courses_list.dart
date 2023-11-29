import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/constant.validate.dart';
import '../../../fonts/google_poppins.dart';
import '../../../widgets/textform feild Widget/textformfeildWidget.dart';

List<Widget> recCousesWidget = [
  Padding(
    padding: const EdgeInsets.only(top: 10, left: 10),
    child: TextFormFiledContainerWidget(
      hintText: "Course Name",
      title: "Couse Name" ,
      width: 200,
      validator: checkFieldEmpty,
    ),
  ), /////////////////////////////////////////////////////////////////0
  Padding(
    padding: const EdgeInsets.only(top: 10, left: 10),
    child: TextFormFiledContainerWidget(
        hintText: "Facultie Name",
        title: "Facultie Name",
        width: 200,
        validator: checkFieldEmpty),
  ), /////////////////////////////////////////////////////////////////////1
  Padding(
    padding: const EdgeInsets.only(top: 10, left: 10),
    child: TextFormFiledContainerWidget(
        hintText: "Course Fee",
        title: "Course Fee",
        width: 200,
        validator: checkFieldEmpty),
  ), ///////////////////////////////////////////////////////////////////////2
  Padding(
    padding: const EdgeInsets.only(top: 10, left: 10),
    child: TextFormFiledContainerWidget(
        hintText: "Enter in Days(Eg:30,40,etc.....)",
        title: "Duration",
        width: 200,
        validator: checkFieldEmpty),
  ), ////////////////////////////////////////////////////////////////////3
  Padding(
    padding: const EdgeInsets.only(top: 10, left: 10),
    child: TextFormFiledContainerWidget(
        hintText: "Course ID",
        title: "Course ID",
        width: 200,
        validator: checkFieldEmpty),
  ), /////////////////////////////////////////////////////////////////////////4
   
  Padding(
    padding: const EdgeInsets.only(
      top: 10,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GooglePoppinsWidgets(text: 'Category', fontsize: 12),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7, left: 10),
          child: SizedBox(
              height: 35,
              width: 200,
              child: Center(
                child: DropdownSearch(
                  validator: checkFieldEmpty,
                  autoValidateMode: AutovalidateMode.always,
                  // onChanged: (value) {
                  //   selectstate = value ?? '';
                  //   log("$selectstate-------");
                  // },
                  dropdownDecoratorProps: DropDownDecoratorProps(
                      baseStyle: GoogleFonts.poppins(
                          fontSize: 13, color: Colors.black.withOpacity(0.7))),
                  selectedItem: 'Select Category',
                  //items: listofState,
                ),
              )),
        ),
      ],
    ),
  ), ////////////////////////////////////////////////////////////DropDown/////////////5
];