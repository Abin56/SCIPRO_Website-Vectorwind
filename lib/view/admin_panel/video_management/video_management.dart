import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro_website/view/admin_panel/video_management/functions/create_category.dart';
import 'package:scipro_website/view/admin_panel/video_management/setting_dialogbox.dart';
import 'package:scipro_website/view/admin_panel/video_management/video_courses_list/view_courses_list.dart';

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
    List<Widget> topVedioManagementBar = [
      ///////////////////
      //////
      ////
      Padding(
        padding:  EdgeInsets.only(top:ResponsiveWebSite.isMobile(context)?5: 40),
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

      GestureDetector(
        onTap: () {
          createvideoRecordedCourses(context);
        },
        child:  Padding(
          padding: EdgeInsets.only(
            top:ResponsiveWebSite.isMobile(context)?0 : 10,
          ),
          child: const ButtonContainerWidget(
            text: 'Create Recorded Courses',
          ),
        ),
      ), //////////////////////////////////////////////////////////////////Create Vedio Recorded Courses
      //////////////////////////////////
      SizedBox(
          height: 35,
          width: 250,
          child: Center(
            child: DropdownSearch(
              autoValidateMode: AutovalidateMode.always,
              // onChanged: (value) {
              //   selectstate = value ?? '';
              //   log("$selectstate-------");
              // },
              dropdownDecoratorProps: DropDownDecoratorProps(
                  baseStyle: GoogleFonts.poppins(
                      fontSize: 13, color: Colors.black.withOpacity(0.7))),
              selectedItem: 'Select Category',
              // items: listofState,
            ),
          )), //////////////////////////////////////////////////////////////////////3 DropDown Selected Category
    ////////////
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
                   topVedioManagementBar[3],],
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
                    Padding(
                      padding: const EdgeInsets.only(top: 37,left: 15),
                      child: topVedioManagementBar[2],
                    ),
                     
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    
                     topVedioManagementBar[3],
                    
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
