import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/textform_field_Widget/textformfieldWidget.dart';

import '../../../widgets/responsive/responsive.dart';

createvideoCategory(BuildContext context) async {
  TextEditingController categoryNameTextController = TextEditingController();

  return customShowDilogBox(
      context: context,
      title: 'Create Category',
      actiontext: 'Create',
      actiononTapfuction: () {
        final key = formKey;
        if (key.currentState!.validate()) {}
      },
      children: [
        Form(
          key: formKey,
          child: TextFormFiledContainerWidget(
            controller: categoryNameTextController,
            hintText: 'Enter Category Name',
            title: 'Category Name',
            width: 300,
            validator: checkFieldEmpty,
          ),
        )
      ],
      doyouwantActionButton: true);
}

createvideoRecordedCourses(BuildContext context) async {
  TextEditingController courseNameTextController = TextEditingController();
  TextEditingController faculteNameTextController = TextEditingController();
  TextEditingController courseFeeTextController = TextEditingController();
  TextEditingController durationTextController = TextEditingController();

  return customShowDilogBox(
      context: context,
      title: 'Create Recorded Courses',
      actiontext: 'Create',
      actiononTapfuction: () {
        final key = formKey;
        if (key.currentState!.validate()) {}
      },
      children: [
        ResponsiveWebSite.isMobile(context)
            ? SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: TextFormFiledContainerWidget(
                        controller: courseFeeTextController,
                        hintText: "Course Name",
                        title: "Couse Name",
                        width: 200,
                        validator: checkFieldEmpty,
                      ),
                    ), /////////////////////////////////////////////////////////////////0
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: TextFormFiledContainerWidget(
                          controller: faculteNameTextController,
                          hintText: "Facultie Name",
                          title: "Facultie Name",
                          width: 200,
                          validator: checkFieldEmpty),
                    ), /////////////////////////////////////////////////////////////////////1
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: TextFormFiledContainerWidget(
                          controller: courseFeeTextController,
                          hintText: "Course Fee",
                          title: "Course Fee",
                          width: 200,
                          validator: checkFieldEmpty),
                    ), ///////////////////////////////////////////////////////////////////////2
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: TextFormFiledContainerWidget(
                          controller: durationTextController,
                          hintText: "Enter in Days(Eg:30,40,etc.....)",
                          title: "Duration",
                          width: 200,
                          validator: checkFieldEmpty),
                    ), ////////////////////////////////////////////////////////////////////3
                    /////////////////////////////////////////////////////////////////////////4

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
                            child: GooglePoppinsWidgets(
                                text: 'Category', fontsize: 12),
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
                                    dropdownDecoratorProps:
                                        DropDownDecoratorProps(
                                            baseStyle: GoogleFonts.poppins(
                                                fontSize: 13,
                                                color: Colors.black
                                                    .withOpacity(0.7))),
                                    selectedItem: 'Select Category',
                                    //items: listofState,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              )
            : Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 250,
                      child: Form(
                        key: formKey,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: TextFormFiledContainerWidget(
                                    controller: courseNameTextController,
                                    hintText: "Course Name",
                                    title: "Couse Name",
                                    width: 200,
                                    validator: checkFieldEmpty,
                                  ),
                                )),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10),
                                    child: TextFormFiledContainerWidget(
                                        controller: faculteNameTextController,
                                        hintText: "Facultie Name",
                                        title: "Facultie Name",
                                        width: 200,
                                        validator: checkFieldEmpty),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10),
                                    child: TextFormFiledContainerWidget(
                                        controller: durationTextController,
                                        hintText:
                                            "Enter in Days(Eg:30,40,etc.....)",
                                        title: "Duration",
                                        width: 200,
                                        validator: checkFieldEmpty),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: GooglePoppinsWidgets(
                                              text: 'Category', fontsize: 12),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 7, left: 10),
                                          child: SizedBox(
                                              height: 35,
                                              width: 200,
                                              child: Center(
                                                child: DropdownSearch(
                                                  validator: checkFieldEmpty,
                                                  autoValidateMode:
                                                      AutovalidateMode.always,
                                                  // onChanged: (value) {
                                                  //   selectstate = value ?? '';
                                                  //   log("$selectstate-------");
                                                  // },
                                                  dropdownDecoratorProps:
                                                      DropDownDecoratorProps(
                                                          baseStyle: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 13,
                                                                  color: Colors
                                                                      .black
                                                                      .withOpacity(
                                                                          0.7))),
                                                  selectedItem:
                                                      'Select Category',
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10),
                                    child: TextFormFiledContainerWidget(
                                        controller: courseFeeTextController,
                                        hintText: "Course Fee",
                                        title: "Course Fee",
                                        width: 200,
                                        validator: checkFieldEmpty),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
      ],
      doyouwantActionButton: true);
}
