import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/notification_controller/notification_controller.dart';
import 'package:scipro_website/data/video_management/course_model.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';

import '../widgets/grid_table_container/grid_table_container.dart';

class ListofRecCourses extends StatelessWidget {
  final NotificationManagementController ncontroller =
      Get.put(NotificationManagementController());
  ListofRecCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return GridTableContainer(
        headerList: const [
          ListViewTableHeaderWidget(width: 100, headerTitle: 'NO'),
          ListViewTableHeaderWidget(
              width: 500, headerTitle: 'COUPEN NAME NAME'),
          ListViewTableHeaderWidget(width: 300, headerTitle: 'DATE'),
        ],
        listview: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('recorded_course')
                .doc(ncontroller.selectedCat.value)
                .collection('course')
                .snapshots(),
            builder: (context, snap) {
              if (snap.hasData) {
                return ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      final data =
                          CourseModel.fromMap(snap.data!.docs[index].data());
                      return GestureDetector(
                        onTap: ()async {
                   await ncontroller
                        .courseWiseSentingMessageAllstudents(context);

                  
                        },
                        child: SizedBox(
                            height: 80,
                            child: Row(
                              children: [
                                DataContainerWidget(
                                  index: index,
                                  width: 100,
                                  headerTitle: '${index + 1}',
                                ),
                                DataContainerWidget(
                                  index: index,
                                  width: 500,
                                  headerTitle: data.courseName,
                                ),
                                DataContainerWidget(
                                  index: index,
                                  width: 300,
                                  headerTitle:
                                      timestampToDate(data.createdDate),
                                ),
                              ],
                            )),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox();
                    },
                    itemCount: snap.data!.docs.length);
              } else {
                return const Center(
                  child: Text("Please Select Category "),
                );
              }
            }));
  }
}



