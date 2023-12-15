import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/notification_controller/notification_controller.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';

import '../../../controller/set_user_access_controller/model/set_user_access_model.dart';
import '../../../data/video_management/course_model.dart';
import '../../constant/constant.validate.dart';
import '../../widgets/dropdown_widget/dropdownwidget.dart';
import '../../widgets/grid_table_container/grid_table_container.dart';

class SetUserAcess extends StatelessWidget {
  final NotificationManagementController noticontroller =
      Get.put(NotificationManagementController());
  SetUserAcess({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: GridTableContainer(
        headerList: const [
          ListViewTableHeaderWidget(width: 100, headerTitle: 'NO'),
          ListViewTableHeaderWidget(width: 300, headerTitle: 'Name'),
          ListViewTableHeaderWidget(width: 250, headerTitle: 'phone No'),
          ListViewTableHeaderWidget(width: 300, headerTitle: 'Email'),
          ListViewTableHeaderWidget(width: 200, headerTitle: 'Joining Date'),
        ],
        listview: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('StudentProfileCollection')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      final data = SetUserAccessModel.fromMap(
                          snapshot.data!.docs[index].data());
                      return GestureDetector(
                        onTap: () {
                          setuserAccessShowDialog(
                            context,
                          );
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
                                    width: 300,
                                    headerTitle: data.name),
                                DataContainerWidget(
                                    index: index,
                                    width: 250,
                                    headerTitle: data.phoneno),
                                DataContainerWidget(
                                    index: index,
                                    width: 300,
                                    headerTitle: data.email),
                                DataContainerWidget(
                                    index: index,
                                    width: 200,
                                    headerTitle: dateConveter(
                                        DateTime.parse(data.joindate))),
                              ],
                            )),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox();
                    },
                    itemCount: snapshot.data!.docs.length);
              } else {
                return const Center(
                  child: Text("No user list "),
                );
              }
            }),
      ),
    );
  }

  void setuserAccessShowDialog(
    BuildContext context,
  ) {
    return customShowDilogBox(
        context: context,
        title: 'Courses',
        children: [
          StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('recorded_course')
                  .doc("28467080-0d1d-1de7-b452-6f0860a3ef02")
                  .collection('course')
                  .snapshots(),
              builder: (context, snapshot) {
                
                return SizedBox(
                  height: 100,
                  width: 100,
                  
                  child: ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        final data = CourseModel.fromMap(
                            snapshot.data!.docs[index].data());
                        return DropdownWidget(hintText: data.courseName);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                      itemCount: snapshot.data!.docs.length),
                );
              }),
        ],
        doyouwantActionButton: true);
  }
}
