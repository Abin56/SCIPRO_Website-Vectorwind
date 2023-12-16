import 'dart:developer';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro_website/controller/notification_controller/notification_controller.dart';
import 'package:scipro_website/data/video_management/category_model.dart';
import 'package:scipro_website/view/admin_panel/notification_management/list_of_rec_courses.dart';
import 'package:scipro_website/view/widgets/button_container_widget/button_container_widget.dart';

import '../../fonts/google_poppins.dart';
import '../../widgets/responsive/responsive.dart';

// ignore: must_be_immutable
class NotificationManagement extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  NotificationManagementController notificationManagementController =
      Get.put(NotificationManagementController());
  NotificationManagement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
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
              text: 'NOTIFICATION MANAGEMENT',
              fontsize: 16,
              fontWeight: FontWeight.bold,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 50),
              child: GestureDetector(
                onTap: () async {
                  notificationManagementController.allUserDeviceToken.clear();
                  await notificationManagementController
                      .sendMessageForAllStudents(context);
                },
                child: const ButtonContainerWidget(
                  text: 'Sent All Students',
                ),
              ),
            ),
          ],
        ),
      ),

      SizedBox(
          height: 35,
          width: 250,
          child: Center(
            child: DropdownSearch<CategoryModel>(
              autoValidateMode: AutovalidateMode.always,
              asyncItems: (value) {
                notificationManagementController.categoryModel.clear();

                return notificationManagementController.fetchRecCategory();
              },
              itemAsString: (value) => value.name,
              onChanged: (value) async {
                if (value != null) {
                  notificationManagementController.selectedCat.value = value.id;
                  log("message${value.id}");
                }
              },
              dropdownDecoratorProps: DropDownDecoratorProps(
                  baseStyle: GoogleFonts.poppins(
                      fontSize: 13, color: Colors.black.withOpacity(0.7))),
            ),
          )), //////////////////////////////////////////////////////////////////////3 DropDown Selected Category

      ////////////////////////////////////////////////////4
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
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
              ),
              Obx(() {
                if (notificationManagementController.selectedCat.value == '') {
                  return const SizedBox();
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListofRecCourses(),
                  );
                }
              })
            ])
          : Column(children: [
              Container(
                height: 130,
                width: double.infinity,
                color: const Color.fromARGB(255, 247, 238, 243),
                child: Row(
                  children: [
                    topVedioManagementBar[0],
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    topVedioManagementBar[1],
                  ],
                ),
              ),
              Obx(() {
                if (notificationManagementController.selectedCat.value == '') {
                  return const SizedBox();
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListofRecCourses(),
                  );
                }
              })
            ]),
    );
  }
}
