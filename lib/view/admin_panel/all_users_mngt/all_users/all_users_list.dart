import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/all_users_controller/alluser_controller.dart';
import 'package:scipro_website/view/admin_panel/all_users_mngt/convert_to_excel.dart';
import 'package:scipro_website/view/admin_panel/search_management/All_users/search_students.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/button_container_widget/button_container_widget.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import '../../../../controller/all_users_controller/model/all_users_model.dart';
import '../../../widgets/grid_table_container/grid_table_container.dart';

class AllUsersList extends StatelessWidget {
  final AllusersController alluserController = Get.put(AllusersController());

  //final ScrollController _horizontalController = ScrollController();

  AllUsersList({super.key});

  @override
  Widget build(BuildContext context) {
    alluserController.fetchAllStudents();
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
              text: 'All USERS',
              fontsize: 16,
              fontWeight: FontWeight.bold,
            ),
            Obx(() {
              if (alluserController.excelisLoading.value == true) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      alluserController.excelisLoading.value = true;

                      exportDataToCSV().then((value) =>
                          alluserController.excelisLoading.value = false);
                    },
                    child: const ButtonContainerWidget(
                      text: ' Export To Excel',
                    ),
                  ),
                );
              }
            })
          ],
        ),
      ),

      Container(
        decoration: BoxDecoration(
            border: Border.all(color: cGrey),
            borderRadius: BorderRadius.circular(2)),
        child: Container(
            decoration: const BoxDecoration(
              color: themeColorBlue,
              borderRadius: BorderRadius.horizontal(),
            ),
            width: ResponsiveWebSite.isMobile(context) ? 150 : 200,
            height: 30,
            child: GestureDetector(
              onTap: () async {
                await searchStudents(context);
              },
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.search,
                      size: 14,
                      color: cWhite,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: GooglePoppinsWidgets(
                        textAlign: TextAlign.center,
                        color: cWhite,
                        fontWeight: FontWeight.w500,
                        text: 'search',
                        fontsize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    ];
    return Column(
      children: [
        Container(
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
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: topVedioManagementBar[1],
                        ),
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
                ])
              : Column(children: [
                  Container(
                    height: 130,
                    color: const Color.fromARGB(255, 247, 238, 243),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            topVedioManagementBar[0],
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: topVedioManagementBar[1],
                        ),
                      ],
                    ),
                  )
                ]),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: GridTableContainer(
            headerList: const [
              ListViewTableHeaderWidget(width: 100, headerTitle: 'NO'),
              ListViewTableHeaderWidget(width: 300, headerTitle: 'Name'),
              ListViewTableHeaderWidget(width: 250, headerTitle: 'phone No'),
              ListViewTableHeaderWidget(width: 300, headerTitle: 'Email'),
              ListViewTableHeaderWidget(
                  width: 200, headerTitle: 'Joining Date'),
            ],
            listview: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('StudentProfileCollection')
                    .orderBy('name', descending: false)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          final data = StudentProfileCreationModel.fromMap(
                              snapshot.data!.docs[index].data());
                          return SizedBox(
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
                              ));
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
        )
      ],
    );
  }
}

Future<void> searchStudents(BuildContext context) async {
  await showSearch(context: context, delegate: AllUsersSearch());
}
