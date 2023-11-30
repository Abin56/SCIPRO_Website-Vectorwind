import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro_website/controller/video_management/video_management_controller.dart';
import 'package:scipro_website/data/video_management/category_data.dart';
import 'package:scipro_website/view/admin_panel/video_management/functions/create_category.dart';
import 'package:scipro_website/view/admin_panel/video_management/video_courses_list/view_courses_list.dart';

import '../../../controller/video_management/recorded_course_controller.dart';
import '../../fonts/google_poppins.dart';
import '../../widgets/button container widget/button_container_widget.dart';
import '../../widgets/responsive/responsive.dart';

// ignore: must_be_immutable
class VideoManagementSection extends StatelessWidget {
  const VideoManagementSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => CategoryController());
    Get.lazyPut(() => RecordedCourseController());
    List<Widget> topVedioManagementBar = [
      ///////////////////
      //////
      ////
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            GooglePoppinsWidgets(
              text: 'VIDEO MANAGEMENT',
              fontsize: 14,
              fontWeight: FontWeight.w500,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: GestureDetector(
                onTap: () {
                  createvideoCategory(context);
                },
                child: const ButtonContainerWidget(
                  text: 'Category',
                ),
              ),
            ),
          ],
        ),
      ),
      //
      //
      /////////////////////    ...................Create Video Category

      GestureDetector(
        onTap: () {
          createvedioRecordedCourses(context);
        },
        child: const Padding(
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: ButtonContainerWidget(
            text: 'Create Recorded Courses',
          ),
        ),
      ), //////////////////////////////////////////////////////////////////Create Vedio Recorded Courses

      SizedBox(
          height: 35,
          width: 200,
          child: Center(
            child: DropdownSearch<CategoryData>(
              autoValidateMode: AutovalidateMode.always,
              asyncItems: (String value) =>
                  Get.find<CategoryController>().fetchAllCategory(),
              itemAsString: (CategoryData data) => data.categoryName,
              onChanged: (value) async {
                await Get.find<RecordedCourseController>()
                    .fetchRecordedCourse(value?.id ?? '');
              },

              dropdownDecoratorProps: DropDownDecoratorProps(
                  baseStyle: GoogleFonts.poppins(
                      fontSize: 13, color: Colors.black.withOpacity(0.7))),
              //selectedItem: 'All States',
              // items: listofState,
            ),
          )), //////////////////////////////////////////////////////////////////////3 DropDown
////////////
    ];
    return Container(
      child: ResponsiveWebSite.isMobile(context)
          ? Column(children: [
              Container(
                height: 150,
                width: double.infinity,
                color: const Color.fromARGB(255, 247, 238, 243),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    topVedioManagementBar[0],
                    topVedioManagementBar[1],
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [topVedioManagementBar[2]],
                ),
              ),
              const RecordedCourses()
            ])
          : Column(children: [
              Container(
                height: 140,
                width: double.infinity,
                color: const Color.fromARGB(255, 247, 238, 243),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    topVedioManagementBar[0],
                    topVedioManagementBar[1],
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [topVedioManagementBar[2]],
                ),
              ),
              const RecordedCourses()
            ]),
    );
  }
}
