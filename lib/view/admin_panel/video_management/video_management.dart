import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro_website/controller/video_management/video_management_controller.dart';
import 'package:scipro_website/data/video_management/category_model.dart';
import 'package:scipro_website/view/admin_panel/video_management/functions/create_category.dart';
import 'package:scipro_website/view/admin_panel/video_management/setting_dialogbox.dart';
import 'package:scipro_website/view/admin_panel/video_management/video_courses_list/view_courses_list.dart';
import 'package:scipro_website/view/widgets/button_container_widget/button_container_widget.dart';

import '../../fonts/google_poppins.dart';
import '../../widgets/responsive/responsive.dart';
import 'video_courses_list/courses list settings/courses_list_settings.dart';

// ignore: must_be_immutable
class VideoManagementSection extends StatelessWidget {
  VideoManagementSection({
    super.key,
  });
  final VideoMangementController videoMangementController =
      Get.put(VideoMangementController());

  @override
  Widget build(BuildContext context) {
    final videoController = Get.find<VideoMangementController>();
    List<Widget> topVedioManagementBar = [
      ///////////////////
      //////
      ////
      Padding(
        padding:
            EdgeInsets.only(top: ResponsiveWebSite.isMobile(context) ? 5 : 40),
        child: Column(
          children: [
            GooglePoppinsWidgets(
              text: 'VIDEO MANAGEMENT',
              fontsize: 16,
              fontWeight: FontWeight.bold,
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
                  text: 'Create Category',
                ),
              ),
            ),
          ],
        ),
      ),

      Padding(
        padding: EdgeInsets.only(
          left: ResponsiveWebSite.isMobile(context) ? 0 : 20,
          bottom: ResponsiveWebSite.isMobile(context) ? 12 : 0,
          top: ResponsiveWebSite.isMobile(context) ? 0 : 36,
        ),
        child: GestureDetector(
          onTap: () {
            settingsDialogBox(context);
          },
          child: const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: ButtonContainerWidget(
              text: 'Settings',
            ),
          ),
        ),
      ),

      Obx(
        () => videoController.selectedCategory.value.id.isEmpty
            ? const SizedBox()
            : GestureDetector(
                onTap: () {
                  createvideoRecordedCourses(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    top: ResponsiveWebSite.isMobile(context) ? 0 : 10,
                  ),
                  child: const ButtonContainerWidget(
                    text: 'Create Recorded Courses',
                  ),
                ),
              ),
      ), //////////////////////////////////////////////////////////////////Create Vedio Recorded Courses
      //////////////////////////////////
      ///
      ///
      ///

      ///
      SizedBox(
          height: 35,
          width: 250,
          child: Center(
            child: DropdownSearch<CategoryModel>(
              autoValidateMode: AutovalidateMode.always,
              asyncItems: (value) => videoController.fetchAllCategory(),
              itemAsString: (value) => value.name,

              onChanged: (value) async {
                if (value != null) {
                  videoController.selectedCategory.value = value;

                  await Get.find<VideoMangementController>().fetchAllCourse();
                }
              },
              dropdownDecoratorProps: DropDownDecoratorProps(
                  baseStyle: GoogleFonts.poppins(
                      fontSize: 13, color: Colors.black.withOpacity(0.7))),
              selectedItem: videoController.selectedCategory.value,
              // items: listofState,
            ),
          )), //////////////////////////////////////////////////////////////////////3 DropDown Selected Category

      const ButtonContainerWidget(
          text:
              'Settings') ////////////////////////////////////////////////////4
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
                    topVedioManagementBar[0],
                    topVedioManagementBar[1],
                    topVedioManagementBar[2],
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    topVedioManagementBar[3],
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: RecordedCourses(),
              )
            ])
          : Column(children: [
              Container(
                height: 130,
                width: double.infinity,
                color: const Color.fromARGB(255, 247, 238, 243),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    topVedioManagementBar[0],
                    topVedioManagementBar[1],
                    const Spacer(),
                    topVedioManagementBar[2],
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        coursesListSettins(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 20),
                        child: topVedioManagementBar[
                            4], ////////////////////////////////////////////Settings
                      ),
                    ),
                    topVedioManagementBar[
                        3], ////////////////////////////////////////////////////DropDown
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: RecordedCourses(),
              )
            ]),
    );
  }
}
