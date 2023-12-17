import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/study_material_controller.dart/study_material_controller.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import '../../../../controller/video_management/video_management_controller.dart';
import '../../../../utils/utils.dart';
import '../../../widgets/textform_field_Widget/textformfieldWidget.dart';

uploadPdfShowDilogue(BuildContext context) {
  TextEditingController pdfNamecontroller = TextEditingController();
  TextEditingController pdfPositioncontroller = TextEditingController();

  final controller = Get.find<StudyMaterialController>();

/////////////////////
////////
  ///pdf Upload Widget List
  List<Widget> uploadPdfWidgets = [
    const CircleAvatar(
      radius: 60,
    ), /////////////////////////////////1/////////Circle Avathar
    Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 30,
        width: 150,
        decoration: const BoxDecoration(
          color: themeColorBlue,
        ),
        child: Center(
          child: GooglePoppinsWidgets(
              text: 'Add Thumbnail',
              color: cWhite,
              fontsize: 12,
              fontWeight: FontWeight.bold),
        ),
      ),
    ), ////////////////////////////////////2//////////thumbnail
    TextFormFiledContainerWidget(
      hintText: 'Enter Pdf Name',
      title: " PDF Name",
      width: 250,
      validator: checkFieldEmpty,
      controller: pdfNamecontroller,
    ), /////////////////////////////////////////3//// 'pdf Name Textform feild
    TextFormFiledContainerWidget(
      hintText: 'Enter PDF Position. eg(1,2,3...)',
      title: "PDF Position",
      width: 250,
      validator: checkFieldEmpty,
      controller: pdfPositioncontroller,
    ), ////////////////////////////////////////////4//////////pdfposition Text formfeild
    Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 30,
        width: 150,
        decoration: const BoxDecoration(
          color: themeColorBlue,
        ),
        child: Center(
          child: GestureDetector(
            onTap: () async {
              controller.studyMaterial.value = await pdfPicker();
            },
            child: GooglePoppinsWidgets(
                text: 'Pick PDF',
                color: cWhite,
                fontsize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ), ////////////////////////////////////5///////////////////pickpfd
    Center(
        child: GooglePoppinsWidgets(
      text: "Enter PDF Name :",
      fontsize: 15,
    )), ////////////////////////////////6///////enter pdf name Text
    Center(
        child: GooglePoppinsWidgets(
      text: "Enter PDF Position :",
      fontsize: 15,
    )), ////////////////////////////////7//////enter pdf position Text/////////
    //////////////////////////
  ];
  final GlobalKey<FormState> formKeyPdf = GlobalKey<FormState>();
  return customShowDilogBox(
      context: context,
      title: "Upload PDF",
      actiontext: "Upload PDF",
      actiononTapfuction: () async {
        final key = formKeyPdf;
        if (key.currentState!.validate()) {
          await controller.uploadStudyMaterialToFirebase(
              name: pdfNamecontroller.text,
              position: pdfPositioncontroller.text);
          pdfPositioncontroller.clear();
          pdfNamecontroller.clear();
        }
      },
      children: [
        Obx(() {
          final value = Get.find<VideoMangementController>().progress.value;
          return Get.find<StudyMaterialController>().isPdfUploading.value
              ? Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircularProgressIndicator(
                        value: value / 100,
                      ),
                      Center(
                        child: Text(
                          '${value.round().toString()}%',
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : ResponsiveWebSite.isMobile(context)
                  ? SizedBox(
                      height: 400,
                      width: 600,
                      child: Form(
                        key: formKeyPdf,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: uploadPdfWidgets[2],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: uploadPdfWidgets[3],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: uploadPdfWidgets[4],
                            ),
                            if (controller.studyMaterial.value != null) ...[
                              const SizedBox(
                                height: 5,
                              ),
                              Text(controller.studyMaterial.value?.name ?? '')
                            ]
                          ],
                        ),
                      ),
                    )
                  : SizedBox(
                      height: 400,
                      width: 600,
                      child: Form(
                        key: formKeyPdf,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 80),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: uploadPdfWidgets[5],
                                  ),
                                  uploadPdfWidgets[2]
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 90),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: uploadPdfWidgets[6],
                                  ),
                                  uploadPdfWidgets[3],
                                ],
                              ),
                            ),
                            uploadPdfWidgets[4],
                            if (controller.studyMaterial.value != null) ...[
                              const SizedBox(
                                height: 5,
                              ),
                              Text(controller.studyMaterial.value?.name ?? '')
                            ]
                          ],
                        ),
                      ),
                    );
        })
      ],
      doyouwantActionButton: true);
}
