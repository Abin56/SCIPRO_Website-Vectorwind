import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/video_management/video_management_controller.dart';
import 'package:scipro_website/data/video_management/course_model.dart';
import 'package:scipro_website/view/admin_panel/video_management/functions/video_folder/show_videoList.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/back_container/back_container.dart';
import 'package:scipro_website/view/widgets/button%20container%20widget/button_container_widget.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';
import 'package:scipro_website/view/widgets/textform%20feild%20Widget/textformfeildWidget.dart';

import 'video list settings/video_list_settings.dart';

viewVideoFolder(BuildContext context, CourseModel courseModel) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GooglePoppinsWidgets(
                text: "Video Folders",
                fontsize: 13,
                fontWeight: FontWeight.w600),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ResponsiveWebSite.isMobile(context)
                  ? Column(
                      children: [
                        const BackButtonContainerWidget(),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                            onTap: () => createVideoFolder(context),
                            child: const ButtonContainerWidget(
                                text: "Create Video Folder ")),

                        ///  Setting
                      ],
                    )
                  : Row(
                      children: [
                        const BackButtonContainerWidget(),
                        const Spacer(),
                        GestureDetector(
                          child: const ButtonContainerWidget(text: "Settings"),
                          onTap: () {
                            videoListSettings(context);
                          },
                        ),
                        const Spacer(),
                        GestureDetector(
                            onTap: () {
                              createVideoFolder(context);
                            },
                            child: const ButtonContainerWidget(
                                text: "Create Video Folder ")),
                      ],
                    ),
            )
          ],
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Obx(() => Get.find<VideoMangementController>().foldersList.isEmpty
                  ? const SizedBox()
                  : SizedBox(
                      height: 400,
                      width: 600,
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            final data = Get.find<VideoMangementController>()
                                .foldersList;
                            return GestureDetector(
                              onTap: () async {
                                Get.find<VideoMangementController>()
                                    .selectedFolder = data[index];
                                await Get.find<VideoMangementController>()
                                    .fetchVideos();
                                if (context.mounted) {
                                  showVideoList(context);
                                }
                              },
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
                                        data[index].folderName,
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
                          itemCount: Get.find<VideoMangementController>()
                              .foldersList
                              .length),
                    )),
            ],
          ),
        ),
      );
    },
  );
}

createVideoFolder(BuildContext context) {
  TextEditingController folderNameController = TextEditingController();
  TextEditingController positionController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  return customShowDilogBox(
      context: context,
      title: 'Create Video Folder',
      children: [
        Obx(
          () => Get.find<VideoMangementController>().isLoadingFolder.value
              ? circularPIndicator
              : SizedBox(
                  height: ResponsiveWebSite.isDesktop(context) ? 200 : 300,
                  width: ResponsiveWebSite.isDesktop(context) ? 400 : 200,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Form(
                          key: formKey,
                          child: Column(
                            children: [
                              TextFormFiledContainerWidget(
                                  controller: folderNameController,
                                  hintText: 'Enter Folder Name',
                                  title: 'Folder Name',
                                  validator: checkFieldEmpty,
                                  width: 250),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormFiledContainerWidget(
                                  controller: positionController,
                                  hintText: 'Enter Position eg 1,2...',
                                  title: 'Enter Position',
                                  validator: numFieldIsValid,
                                  width: 250),
                            ],
                          ),
                        )
                      ]),
                ),
        ),
      ],
      actiononTapfuction: () async {
        if (formKey.currentState?.validate() ?? false) {
          await Get.find<VideoMangementController>().createFolder(
              folderName: folderNameController.text,
              position: positionController.text);

          folderNameController.clear();
          positionController.clear();
        }
      },
      actiontext: 'Create Folder',
      doyouwantActionButton: true);
}
