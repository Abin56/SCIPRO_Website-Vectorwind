import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/video_management/video_management_controller.dart';
import 'package:scipro_website/data/video_management/course_model.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';
import 'package:scipro_website/view/widgets/textform%20feild%20Widget/textformfeildWidget.dart';

coursesListSettins(BuildContext context) {
  return customShowDilogBox(
      context: context,
      title: 'All Course List',
      children: [
        SizedBox(
            height: 300,
            width: 600,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Obx(
                () {
                  final data =
                      Get.find<VideoMangementController>().fetchedCourse;
                  return ListView.separated(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => ontaponCourseList(context, data[index]),
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
                                  '${data[index].position}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  data[index].courseName,
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
                    itemCount: data.length,
                  );
                },
              ),
            ))
      ],
      doyouwantActionButton: false);
}

ontaponCourseList(BuildContext context, CourseModel courseModel) {
  TextEditingController courseNameController = TextEditingController();
  TextEditingController positionController = TextEditingController();

  CourseModel updatedCourseModel = courseModel;
  List<Widget> listofWidget = [
    TextFormFiledContainerWidget(
        controller: courseNameController,
        hintText: 'Enter Course Name',
        title: 'Change Course Name',
        onChanged: (String value) {
          updatedCourseModel = courseModel.copyWith(courseName: value);
        },
        width: 250),
    Container(
      height: 30,
      width: 80,
      decoration: const BoxDecoration(
        color: themeColorBlue,
      ),
      child: Center(
        child: GestureDetector(
          onTap: () async {
            Get.find<VideoMangementController>()
                .updateCourseFromFirebase(courseModel: updatedCourseModel);
            courseNameController.clear();
            positionController.clear();
            if (context.mounted) {
              Navigator.of(context).pop();
            }
          },
          child: GooglePoppinsWidgets(
              text: 'UPDATE',
              color: cWhite,
              fontsize: 12,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
    TextFormFiledContainerWidget(
        controller: positionController,
        hintText: 'Enter Position eg 1,2...',
        title: 'Change Position',
        onChanged: (String value) {
          updatedCourseModel =
              courseModel.copyWith(position: int.tryParse(value) ?? -1);
        },
        width: 250),
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
              await Get.find<VideoMangementController>()
                  .updateCourseFromFirebase(courseModel: updatedCourseModel);
              courseNameController.clear();
              positionController.clear();
              if (context.mounted) {
                Navigator.of(context).pop();
              }
            },
            child: GooglePoppinsWidgets(
                text: 'UPDATE',
                color: cWhite,
                fontsize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  ];
  courseNameController.text = courseModel.courseName;
  positionController.text = courseModel.position.toString();
  return customShowDilogBox(
      context: context,
      title: "Edit Course",
      children: [
        Get.find<VideoMangementController>().isLoading.value
            ? circularPIndicator
            : SizedBox(
                height: ResponsiveWebSite.isDesktop(context) ? 200 : 300,
                width: ResponsiveWebSite.isDesktop(context) ? 400 : 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResponsiveWebSite.isMobile(context)
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              listofWidget[0],
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: listofWidget[1],
                              ),
                              listofWidget[2],
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: listofWidget[3],
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Row(
                                children: [
                                  listofWidget[0],
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 20),
                                    child: listofWidget[1],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  listofWidget[2],
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 20),
                                    child: listofWidget[3],
                                  ),
                                ],
                              ),
                            ],
                          ),
                    GestureDetector(
                      onTap: () {
                        customShowDilogBox(
                            context: context,
                            title: "Alert",
                            children: [const Text('Do you want this Course ?')],
                            doyouwantActionButton: true,
                            actiononTapfuction: () {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 40,
                          width: 150,
                          color: themeColorBlue,
                          child: const Center(
                            child: Text(
                              "Delete Course",
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
              )
      ],
      doyouwantActionButton: false);
}
