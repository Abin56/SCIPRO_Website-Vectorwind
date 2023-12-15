import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/study_material_controller.dart/study_material_controller.dart';
import 'package:scipro_website/data/video_management/study_material_model.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';

import '../../../fonts/google_poppins.dart';
import '../../../widgets/textform_field_Widget/textformfieldWidget.dart';

editdeletPdfList(BuildContext context) {
  final data = Get.find<StudyMaterialController>().studyMaterialList;
  return customShowDilogBox(
      context: context,
      title: 'All PDF List',
      children: [
        SizedBox(
            height: 300,
            width: 600,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Obx(
                () => Get.find<StudyMaterialController>()
                        .isStudyMaterialLoading
                        .value
                    ? circularPIndicator
                    : ListView.separated(
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => ontapPDFList(context, data[index]),
                            child: Container(
                              height: 40,
                              width: 100,
                              color: themeColorBlue.withOpacity(0.9),
                              child: Row(
                                children: [
                                  Container(
                                    height: double.infinity,
                                    color: cWhite,
                                    width: 60,
                                    child: Center(
                                        child: Text(
                                      data[index].position,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      data[index].pdfName,
                                      style: const TextStyle(
                                          color: cWhite,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemCount: data.length),
              ),
            ))
      ],
      doyouwantActionButton: false);
}

ontapPDFList(BuildContext context, StudyMaterial studyMaterial) {
  TextEditingController pdfNameController = TextEditingController();
  TextEditingController positionController = TextEditingController();

  pdfNameController.text = studyMaterial.pdfName;
  positionController.text = studyMaterial.position;

  StudyMaterial updatedStudyMaterial = studyMaterial;
  List<Widget> listofWidget = [
    TextFormFiledContainerWidget(
        controller: pdfNameController,
        hintText: 'Enter PDF Name',
        title: 'Change PDF Name',
        onChanged: (value) {
          updatedStudyMaterial = studyMaterial.copyWith(pdfName: value);
        },
        width: 250), /////////////////////////////////////0
    Container(
      height: 30,
      width: 80,
      decoration: const BoxDecoration(
        color: themeColorBlue,
      ),
      child: Center(
        child: GestureDetector(
          onTap: () async {
            await Get.find<StudyMaterialController>()
                .updateStudyMaterialFromFirebase(
                    studyMaterial: updatedStudyMaterial);
            pdfNameController.clear();
            positionController.clear();
          },
          child: GooglePoppinsWidgets(
              text: 'UPDATE',
              color: cWhite,
              fontsize: 12,
              fontWeight: FontWeight.bold),
        ),
      ),
    ), /////////////////////////////////////////1
    TextFormFiledContainerWidget(
        controller: positionController,
        hintText: 'Enter Position eg 1,2...',
        title: 'Change Position',
        onChanged: (value) {
          updatedStudyMaterial = studyMaterial.copyWith(position: value);
        },
        width: 250), ///////////////////////////////////////2
    Padding(
      padding: const EdgeInsets.only(left: 0, top: 05),
      child: Container(
        height: 30,
        width: 80,
        decoration: const BoxDecoration(
          color: themeColorBlue,
        ),
        child: Center(
          child: GestureDetector(
            onTap: () async {
              await Get.find<StudyMaterialController>()
                  .updateStudyMaterialFromFirebase(
                      studyMaterial: updatedStudyMaterial);
              pdfNameController.clear();
              positionController.clear();
            },
            child: GooglePoppinsWidgets(
                text: 'UPDATE',
                color: cWhite,
                fontsize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ), /////////////////////////////////////////////////3
  ];
  return customShowDilogBox(
      context: context,
      title: "Edit PDF",
      children: [
        Obx(() {
          return Get.find<StudyMaterialController>()
                  .isStudyMaterialLoading
                  .value
              ? circularPIndicator
              : SizedBox(
                  // height: ResponsiveWebSite.isDesktop(context) ? 200 : 300,
                  // width: ResponsiveWebSite.isDesktop(context) ? 400 : 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ResponsiveWebSite.isDesktop(context)
                      //     ?
                      Column(
                        children: [
                          Row(
                            children: [
                              listofWidget[0],
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 20),
                                child: listofWidget[1],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              listofWidget[2],
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 20),
                                child: listofWidget[3],
                              ),
                            ],
                          ),
                        ],
                      ),
                      // : Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       listofWidget[0],
                      //       Padding(
                      //         padding: const EdgeInsets.only(top: 10),
                      //         child: listofWidget[1],
                      //       ),
                      //       listofWidget[2],
                      //       Padding(
                      //         padding: const EdgeInsets.only(top: 10),
                      //         child: listofWidget[3],
                      //       ),
                      //     ],
                      //   ),
                      GestureDetector(
                        onTap: () async {
                          Navigator.of(context).pop();
                          await customShowDilogBox(
                              context: context,
                              title: "Alert",
                              children: [const Text('Do you want this PDF ?')],
                              doyouwantActionButton: true,
                              actiononTapfuction: () async {
                                await Get.find<StudyMaterialController>()
                                    .deleteStudyMaterialFromFirebase(
                                        studyMaterial: updatedStudyMaterial);
                                Navigator.of(context).pop();
                              });
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 40,
                            width: 150,
                            color: themeColorBlue,
                            child: const Center(
                              child: Text(
                                "Delete PDF",
                                style: TextStyle(
                                    color: cWhite,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        })
      ],
      doyouwantActionButton: false);
}
