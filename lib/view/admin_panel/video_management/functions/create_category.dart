import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/video_management/video_management_controller.dart';
import 'package:scipro_website/data/video_management/category_data.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/textform%20feild%20Widget/textformfeildWidget.dart';

import '../../../../controller/video_management/recorded_course_controller.dart';
import '../../../widgets/responsive/responsive.dart';
import '../create_rec_courses_list/create_rec_courses_list.dart';

createvideoCategory(BuildContext context) async {
  
  TextEditingController textController = TextEditingController();

  return customShowDilogBox(
      context: context,
      title: 'Create Category',
      actiontext: 'Create',
      actiononTapfuction: () async {
        final key = formKey;
        if (key.currentState!.validate()) {
          await Get.find<CategoryController>().createCategory(
              categoryData: CategoryData(
            categoryName: textController.text,
            id: '',
          ));
          textController.clear();
        }
      },
      children: [
        Obx(() {
          return Get.find<CategoryController>().isLoading.value
              ? circularPIndicator
              : Form(
                  key: formKey,
                  child: TextFormFiledContainerWidget(
                    hintText: 'Create Category',
                    title: 'Create Category',
                    width: 300,
                    validator: checkFieldEmpty,
                    controller: textController,
                  ),
                );
        })
      ],
      doyouwantActionButton: true);
}

createvedioRecordedCourses(BuildContext context) async {
 
  return customShowDilogBox(
      context: context,
      title: 'Create Recorded Courses',
      actiontext: 'Create',
      actiononTapfuction: () async {
        final key = formKey;
        if (key.currentState!.validate()) {
          await Get.find<RecordedCourseController>().createCategory();
        }
      },
      children: [
        Obx(
          () => Get.find<RecordedCourseController>().isLoading.value
              ? circularPIndicator
              : ResponsiveWebSite.isMobile(context)
                  ? SingleChildScrollView(
                      child: Form(
                        key: formKey,
                        child: Column(children: [
                          recCousesWidget[0],
                          recCousesWidget[1],
                          recCousesWidget[2],
                          recCousesWidget[3],
                          recCousesWidget[4],
                          recCousesWidget[5],
                          recCousesWidget[6],
                          recCousesWidget[7],
                        ]),
                      ),
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 300,
                            child: Form(
                              key: formKey,
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(child: recCousesWidget[0]),
                                      Expanded(child: recCousesWidget[1]),
                                      Expanded(child: recCousesWidget[2]),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(child: recCousesWidget[3]),
                                      Expanded(child: recCousesWidget[4]),
                                      Expanded(child: recCousesWidget[5]),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      recCousesWidget[6],
                                      recCousesWidget[7]
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ],
                    ),
        )
      ],
      doyouwantActionButton: true);
}
