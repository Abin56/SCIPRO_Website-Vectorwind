import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro_website/controller/notification_controller/notification_controller.dart';
import 'package:scipro_website/controller/study_material_controller.dart/study_material_controller.dart';
import 'package:scipro_website/data/video_management/category_model.dart';
import 'package:scipro_website/data/video_management/course_model.dart';
import 'package:scipro_website/view/admin_panel/studyMaterials_management/pdf_folder/all_pdf_list.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/const.dart';

import '../../fonts/google_poppins.dart';
import '../../widgets/responsive/responsive.dart';

// ignore: must_be_immutable
class StudyMaterialsManagementSection extends StatelessWidget {
  NotificationManagementController notificationManagementController =
      Get.put(NotificationManagementController());
  StudyMaterialController studyMaterialController =
      Get.put(StudyMaterialController());
  StudyMaterialsManagementSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> studymaterialsWidgets = [
      ///////////////////

      Padding(
        padding:
            EdgeInsets.only(top: ResponsiveWebSite.isMobile(context) ? 5 : 40),
        child: GooglePoppinsWidgets(
          text: 'STUDY MATERIALS',
          fontsize: 17,
          fontWeight: FontWeight.bold,
        ),
      ), ///////////////////////////////////////////////0

      SizedBox(
          height: 35,
          width: 250,
          child: Center(
            child: DropdownSearch(
              autoValidateMode: AutovalidateMode.always,
              dropdownDecoratorProps: DropDownDecoratorProps(
                  baseStyle: GoogleFonts.poppins(
                      fontSize: 13, color: Colors.black.withOpacity(0.7))),
              selectedItem: 'Select Category',
            ),
          )), //////////////////////////////////1

      SizedBox(
        height: 35,
        width: 250,
        child: Center(
            child: DropdownSearch<CategoryModel>(
          autoValidateMode: AutovalidateMode.always,
          asyncItems: (value) => studyMaterialController.fetchAllCategory(),
          itemAsString: (item) => item.name,
          selectedItem: studyMaterialController.selectedCategory.value,
          onChanged: (value) async {
            if (value != null) {
              studyMaterialController.selectedCategory.value = value;
              await studyMaterialController.fetchAllCourse();
            }
          },
          dropdownDecoratorProps: DropDownDecoratorProps(
            baseStyle: GoogleFonts.poppins(
              fontSize: 13,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        )),
      ),

/////////////////////////////////////////2
      SizedBox(
        height: 550,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // GestureDetector(
            //   onTap: () async {
            //     await createFolderForStdMaterials(context);
            //   },
            //   child: const Padding(
            //     padding: EdgeInsets.all(8.0),
            //     child: ButtonContainerWidget(text: 'Create Folder'),
            //   ),
            // ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  child: Obx(
                    () => studyMaterialController.isLoading.value
                        ? circularPIndicator
                        : StreamBuilder<List<CourseModel>>(
                            stream:
                                studyMaterialController.fetchAllCourseStream(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return circularPIndicator;
                              }
                              return ListView.separated(
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () async {
                                        studyMaterialController.selectedCourse =
                                            snapshot.data?[index];
                                        await studyMaterialController
                                            .fetchAllFolders()
                                            .then((_) => showStudyMaterialsList(
                                                context));
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 100,
                                        color: index % 2 == 0
                                            ? Colors.white
                                            : const Color.fromARGB(
                                                255, 219, 235, 247),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: double.infinity,
                                              color: cWhite,
                                              width: 60,
                                              child: Center(
                                                  child: Text(
                                                '${snapshot.data?[index].position ?? 0}',
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              )),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Text(
                                                snapshot.data?[index]
                                                        .courseName ??
                                                    '',
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.w500,
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
                                  itemCount: snapshot.data?.length ?? 0);
                            }),
                  ),
                ),
              ),
            ), /////////////////////////////////////////////////3
          ],
        ),
      ),
    ];
    return Container(
      child: ResponsiveWebSite.isMobile(context)
          ? Column(children: [
              Container(
                height: 160,
                width: double.infinity,
                color: const Color.fromARGB(255, 247, 238, 243),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    studymaterialsWidgets[0],
                    const SizedBox(
                      height: 20,
                    ),
                    // studymaterialsWidgets[1],
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    studymaterialsWidgets[2],
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: studymaterialsWidgets[3],
              ),
            ])
          : Column(children: [
              Container(
                height: 140,
                width: double.infinity,
                color: const Color.fromARGB(255, 247, 238, 243),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // IconButton(
                    //     onPressed: () async {
                    //       await notificationManagementController
                    //           .sendNotificationAllStudents("body", "title");
                    //     },
                    //     icon: const Icon(Icons.ac_unit_sharp)),/////////////
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: studymaterialsWidgets[0],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // studymaterialsWidgets[1],
                          // const Spacer(),
                          studymaterialsWidgets[2],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: studymaterialsWidgets[3],
              ),
            ]),
    );
  }
}
