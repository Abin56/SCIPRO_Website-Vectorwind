import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/video_management/video_management_controller.dart';
import 'package:scipro_website/data/video_management/course_model.dart';
import 'package:scipro_website/view/colors/colors.dart';

import '../../../../constant/constant.validate.dart';
import '../../functions/video_folder/create_videoFolder.dart';

class SampleWidget extends StatelessWidget {
  const SampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Get.find<VideoMangementController>().fetchedCourse.isEmpty
        ? const SizedBox()
        : Scaffold(
            body: Center(
              child: Container(
                height: 500,
                width: 1300,
                decoration: BoxDecoration(
                  color: cWhite,
                  border: Border.all(
                    color: cBlack.withOpacity(0.4),
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Expanded(
                          child: SizedBox(
                        width: 1298,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: Row(
                                children: [
                                  ListViewTableHeaderWidget(
                                      width: 100, headerTitle: 'NO'),
                                  ListViewTableHeaderWidget(
                                      width: 700, headerTitle: 'COURSE NAME'),
                                  ListViewTableHeaderWidget(
                                      width: 300, headerTitle: 'DATE'),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 20, right: 25, bottom: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: cBlack.withOpacity(0.3))),
                                  child: ListView.separated(
                                      // scrollDirection: Axis.horizontal,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        List<CourseModel> data =
                                            Get.find<VideoMangementController>()
                                                .fetchedCourse;
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0, left: 0),
                                          child: GestureDetector(
                                            onTap: () async {
                                              Get.find<
                                                      VideoMangementController>()
                                                  .selectedCourse = data[index];
                                              await Get.find<
                                                      VideoMangementController>()
                                                  .fetchAllFolders();
                                              if (context.mounted) {
                                                viewVideoFolder(
                                                    context, data[index]);
                                              }
                                            },
                                            child: SizedBox(
                                              height: 48,
                                              child: Row(
                                                children: [
                                                  DataContainerWidget(
                                                    index: index,
                                                    width: 100,
                                                    headerTitle: data[index]
                                                        .position
                                                        .toString(),
                                                  ),
                                                  DataContainerWidget(
                                                    index: index,
                                                    width: 700,
                                                    headerTitle:
                                                        data[index].courseName,
                                                  ),
                                                  // DataContainerWidget(
                                                  //   index: index,
                                                  //   width: 150,
                                                  //   headerTitle: data[index]
                                                  //       .courseFee
                                                  //       .toString(),
                                                  // ),
                                                  DataContainerWidget(
                                                    index: index,
                                                    width: 300,
                                                    headerTitle:
                                                        timestampToDate(
                                                            data[index]
                                                                .createdDate),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return const SizedBox(
                                          height: 10,
                                        );
                                      },
                                      itemCount:
                                          Get.find<VideoMangementController>()
                                              .fetchedCourse
                                              .length),
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ));
  }
}

class ListViewTableHeaderWidget extends StatelessWidget {
  final String headerTitle;
  final double? width;

  const ListViewTableHeaderWidget({
    this.width,
    required this.headerTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
          color: Colors.blue[100],
          border: Border.all(color: cBlack.withOpacity(0.5))),
      child: Center(
        child: Text(
          headerTitle,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
        ),
      ),
    );
  }
}

class DataContainerWidget extends StatelessWidget {
  final int index;
  final String headerTitle;
  final double? width;
  final Color? color;
  final double? height;

  const DataContainerWidget({
    required this.index,
    this.color,
    this.width,
    this.height,
    required this.headerTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: index % 2 == 0
              ? Colors.grey.withOpacity(0.3)
              : Colors.blue.withOpacity(0.3),
          border: Border.all(color: cGrey.withOpacity(0.2))),
      child: Center(
        child: Text(
          headerTitle,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12.5),
        ),
      ),
    );
  }
}
