import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/all_users_controller/alluser_controller.dart';
import 'package:scipro_website/view/admin_panel/all_users_mngt/convert_to_excel.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/button_container_widget/button_container_widget.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import '../../../../controller/all_users_controller/model/all_users_model.dart';
import '../../../widgets/grid_table_container/grid_table_container.dart';

class AllUsersList extends StatelessWidget {
  final AllusersController alluserController = Get.put(AllusersController());

  //final ScrollController _horizontalController = ScrollController();

  AllUsersList({super.key});

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
          decoration: const BoxDecoration(
            color: themeColorBlue,
            borderRadius: BorderRadius.horizontal(),
          ),
          width: ResponsiveWebSite.isMobile(context) ? 150 : 200,
          height: 30,
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
          )),
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
                        Container(
                          child: Row(
                            children: [
                              topVedioManagementBar[0],
                            ],
                          ),
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
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          final data = StudentProfileCreationModel.fromMap(
                              snapshot.data!.docs[index].data());
                          return GestureDetector(
                            onTap: () {
                              allusersshowdialogue(context);
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
        )
      ],
    );
  }
}



void allusersshowdialogue(BuildContext context) {
  customShowDilogBox(
      context: context,
      title: 'All Users',
      children: [
        StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('StudentProfileCollection')
                .snapshots(),
            builder: (context, snapshot) {
              return Container(
                height: 400,
                width: 350,
                decoration:
                    BoxDecoration(border: Border.all(color: themeColorBlue)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Center(
                        child: CircleAvatar(
                      radius: 60,
                    )),
                    Center(
                      child: TextRowWidget(
                        firstText: 'Name',
                        secondText: '',
                      ),
                    ),
                    Center(child: TextRowWidget(firstText: 'Email', secondText: '',),),
                    
                      Center(child: TextRowWidget(firstText: 'Phone No', secondText: '',),),
                       Center(child: TextRowWidget(firstText: 'Join Date', secondText: '',),),
                           Center(child: TextRowWidget(firstText: 'Address', secondText: '',),),
                       Center(child: TextRowWidget(firstText: 'District', secondText: '',),),
                       Center(child: TextRowWidget(firstText: 'Pincode', secondText: '',),),
                           Center(child: TextRowWidget(firstText: 'State', secondText: '',),),
                     
                  ],
                ),
              );
            })
      ],
      doyouwantActionButton: false);
}

class TextRowWidget extends StatelessWidget {
  String firstText;
  String secondText;
  TextRowWidget(
      {super.key,
      // required this.data,
      required this.firstText,
      required this.secondText});

  // final UserAfterPaymentModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: GooglePoppinsWidgets(
            text: firstText,
            fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 14,
            fontWeight: ResponsiveWebSite.isMobile(context)
                ? FontWeight.normal
                : FontWeight.w600,
          )),
          Expanded(
              child: GooglePoppinsWidgets(
            text: secondText,
            fontsize: ResponsiveWebSite.isMobile(context) ? 12 : 14,
          )),
        ],
      ),
    );
  }
}
