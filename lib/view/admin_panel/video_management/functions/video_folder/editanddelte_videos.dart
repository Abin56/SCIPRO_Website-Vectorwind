import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/data/video_management/video_model.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';
import 'package:scipro_website/view/widgets/textform_field_Widget/textformfieldWidget.dart';

import '../../../../../controller/video_management/video_management_controller.dart';

editdeletVideoList(BuildContext context) {
  final videos = Get.find<VideoMangementController>().vidoesList;
  return customShowDilogBox(
      context: context,
      title: 'All Video List',
      children: [
        Obx(() => Get.find<VideoMangementController>().vidoesList.isEmpty
            ? const SizedBox()
            : SizedBox(
                height: 300,
                width: 600,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => ontaponVideoList(context, videos[index]),
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
                                    videos[index].position,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    videos[index].videoName,
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
                      itemCount: videos.length),
                ),
              ))
      ],
      doyouwantActionButton: false);
}

ontaponVideoList(BuildContext context, VideoModel videoModel) {
  TextEditingController videoNameController = TextEditingController();
  TextEditingController positionController = TextEditingController();
  VideoModel updatedVideoModel = videoModel;
  List<Widget> listofWidget = [
    TextFormFiledContainerWidget(
        controller: videoNameController,
        hintText: 'Enter Video Name',
        title: 'Change Video Name',
        onChanged: (String value) {
          updatedVideoModel = videoModel.copyWith(videoName: value);
        },
        width: 250),
    GestureDetector(
      onTap: () async {
        await Get.find<VideoMangementController>()
            .updateVideoFromFirebase(videoModel: updatedVideoModel);
        videoNameController.clear();
        positionController.clear();
        if (context.mounted) {
          Navigator.of(context).pop();
        }
      },
      child: Container(
        height: 30,
        width: 80,
        decoration: const BoxDecoration(
          color: themeColorBlue,
        ),
        child: Center(
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
          updatedVideoModel = videoModel.copyWith(position: value);
        },
        width: 250),
    Padding(
      padding: const EdgeInsets.only(left: 0, top: 05),
      child: GestureDetector(
        onTap: () async {
          await Get.find<VideoMangementController>()
              .updateVideoFromFirebase(videoModel: updatedVideoModel);
          videoNameController.clear();
          positionController.clear();
          if (context.mounted) {
            Navigator.of(context).pop();
          }
        },
        child: Container(
          height: 30,
          width: 80,
          decoration: const BoxDecoration(
            color: themeColorBlue,
          ),
          child: Center(
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

  videoNameController.text = videoModel.videoName;
  positionController.text = videoModel.position;
  return customShowDilogBox(
      context: context,
      title: "Edit Video",
      children: [
        Obx(
          () => Get.find<VideoMangementController>().isVideoUploading.value
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
                              children: [
                                const Text('Do you want this Video ?')
                              ],
                              doyouwantActionButton: true,
                              actiononTapfuction: () async {
                                await Get.find<VideoMangementController>()
                                    .deleteVideoFromFirebase(
                                        videoModel: videoModel);
                                if (context.mounted) {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pop();
                                }
                              });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 40,
                            width: 150,
                            color: themeColorBlue,
                            child: const Center(
                              child: Text(
                                "Delete Video",
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
                ),
        )
      ],
      doyouwantActionButton: false);
}
