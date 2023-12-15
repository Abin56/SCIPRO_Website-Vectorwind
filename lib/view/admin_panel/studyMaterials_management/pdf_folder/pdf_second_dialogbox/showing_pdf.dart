import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/studyMaterials_management/crud_function_pdf/pdf_editdelete.dart';
import 'package:scipro_website/view/admin_panel/studyMaterials_management/crud_function_pdf/update_pdf.dart';
import 'package:scipro_website/view/admin_panel/studyMaterials_management/pdf_folder/pdf_second_dialogbox/Grid_list_p.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/back_container/back_container.dart';
import 'package:scipro_website/view/widgets/button_container_widget/button_container_widget.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

showingPdfList(BuildContext context) {
  List<Widget> showWidgets = [
    GestureDetector(
        onTap: () => editdeletPdfList(context),
        child: const ButtonContainerWidget(text: "Settings")),
    GestureDetector(
        onTap: () => uploadPdfShowDilogue(context),
        child: const ButtonContainerWidget(text: "Upload PDF"))
  ];
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GooglePoppinsWidgets(
                text: "All PDF", fontsize: 13, fontWeight: FontWeight.w600),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ResponsiveWebSite.isMobile(context)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BackButtonContainerWidget(),
                        const SizedBox(
                          height: 20,
                        ),
                        showWidgets[0],

                        ///  Setting
                        const SizedBox(
                          height: 10,
                        ),
                        showWidgets[1], // pdf Upload
                      ],
                    )
                  : Row(
                      children: [
                        const BackButtonContainerWidget(),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: showWidgets[0],
                        ),

                        ///  Setting
                        const SizedBox(
                          width: 10,
                        ),
                        showWidgets[1], // pdf Upload
                      ],
                    ),
            )
          ],
        ),
        content: const SingleChildScrollView(
          child: ListBody(
            children: [
              ListofPdfSecondDialogBox()
              // Container(
              //   height: 500,
              //   width: 600,
              //   color: Colors.white,
              //   child: ListofRecCourses() ,
              //   //const PdfListingGrid(),
              // )
            ],
          ),
        ),
      );
    },
  );
}