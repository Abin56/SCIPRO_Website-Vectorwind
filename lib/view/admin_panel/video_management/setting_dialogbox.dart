import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/video_management/video_management_controller.dart';
import 'package:scipro_website/view/admin_panel/video_management/functions/edit&delete_section/course_list.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';

settingsDialogBox(BuildContext context) {
  return customShowDilogBox(
      context: context,
      title: "settings",
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () async {
              await Get.find<VideoMangementController>().fetchAllCategory();
              if (context.mounted) {
                totalCourseList(context);
              }
            },
            child: Container(
              height: 30,
              color: const Color.fromARGB(255, 91, 166, 228),
              child: Center(
                  child: GooglePoppinsWidgets(
                text: 'CATEGORY COURSES',
                fontsize: 14,
                fontWeight: FontWeight.w500,
              )),
            ),
          ),
        ),
      ],
      doyouwantActionButton: true);
}
