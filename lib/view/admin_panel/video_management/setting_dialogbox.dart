import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/video_management/functions/edit&delete_section/category.dart';
import 'package:scipro_website/view/admin_panel/video_management/functions/edit&delete_section/course_list.dart';
import 'package:scipro_website/view/admin_panel/video_management/functions/edit&delete_section/video_list.dart';
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
                      onTap: (){
            totalCategoryList(context);
          },
            child: Container(
              height: 30,
              color: const Color.fromARGB(255, 91, 166, 228),
              child: Center(
                  child: GooglePoppinsWidgets(
                text: 'RECORD CATEGORY',
                fontsize: 14,
                fontWeight: FontWeight.w500,
              )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
                      onTap: (){
            totalCourseList(context);
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
                      onTap: (){
            totalVideoList(context);
          },
            child: Container(
              height: 30,
              color: const Color.fromARGB(255, 91, 166, 228),
              child: Center(
                  child: GooglePoppinsWidgets(
                text: 'VIDEO LIST',
                fontsize: 14,
                fontWeight: FontWeight.w500,
              )),
            ),
          ),
        )
      ],
      doyouwantActionButton: true);
}
