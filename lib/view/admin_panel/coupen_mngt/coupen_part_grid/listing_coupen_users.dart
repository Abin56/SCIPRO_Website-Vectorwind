import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/coupen_management_controller/coupen_m.dart';
import 'package:scipro_website/controller/coupen_management_controller/model/coupen_model.dart';
import 'package:scipro_website/view/admin_panel/coupen_mngt/functions/create_coupen.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/core/core.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/button_container_widget/button_container_widget.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/grid_table_container/grid_table_container.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

class AllUsersForCoupenList extends StatelessWidget {
  final CoupenManagementController coupenManagementController =
      Get.put(CoupenManagementController());

  AllUsersForCoupenList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> listwidget = [
      StreamBuilder(
          stream: dataserver.collection('CoupenManagement').snapshots(),
          builder: (context, snaps) {
            if (snaps.data == null) {
              return const Center(
                  child: Text(
                "No coupens found",
              ));
            } else {
              return GridTableContainer(
                  headerList: const [
                    ListViewTableHeaderWidget(width: 100, headerTitle: 'NO'),
                    ListViewTableHeaderWidget(
                        width: 500, headerTitle: 'COUPON NAME '),
                    ListViewTableHeaderWidget(
                        width: 150, headerTitle: 'NO OF USES'),
                    ListViewTableHeaderWidget(
                        width: 150, headerTitle: 'TOTAL USES'),
                    ListViewTableHeaderWidget(width: 300, headerTitle: 'DATE'),
                  ],
                  listview: ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        final data = CoupenManagementModel.fromMap(
                            snaps.data!.docs[index].data());
                        return GestureDetector(
                          onTap: () => customShowDilogBox(
                              context: context,
                              title: 'Coupen Code',
                              children: [
                                SizedBox(
                                  height: 250,
                                  width: 400,
                                  child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Note :  ',
                                            style: TextStyle(
                                                color: cBlack,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                              'When use this coupencode add SCIPRO (eg SCIPROaJI34HNdet)',
                                              style: TextStyle(
                                                  color: cBlack,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500)),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Center(
                                              child: Container(
                                            decoration: const BoxDecoration(
                                              color: themeColorBlue,
                                              borderRadius:
                                                  BorderRadius.horizontal(),
                                            ),
                                            width: ResponsiveWebSite.isMobile(
                                                    context)
                                                ? 150
                                                : 250,
                                            height: 30,
                                            child: Center(
                                              child: GooglePoppinsWidgets(
                                                textAlign: TextAlign.center,
                                                color: cWhite,
                                                fontWeight: FontWeight.w500,
                                                text: data.coupenCode,
                                                fontsize: 12,
                                              ),
                                            ),
                                          )),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          GestureDetector(
                                              onTap: () async {
                                                copyToClipboard(
                                                    data.coupenCode, context);
                                              },
                                              child: Center(
                                                child: Container(
                                                  height: 30,
                                                  width: 100,
                                                  color: cGrey,
                                                  child: const Center(
                                                      child: Text("Copy Code",
                                                          style: TextStyle(
                                                              color: cBlack,
                                                              fontSize: 11.5,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600))),
                                                ),
                                              )),
                                        ],
                                      )),
                                ),
                              ],
                              actiononTapfuction: () async {
                                coupenManagementController.deletecoupen(
                                    docid: data.id, context: context);
                              },
                              actiontext: "Delete",
                              doyouwantActionButton: true),
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
                                    headerTitle: data.coupenName,
                                  ),
                                  DataContainerWidget(
                                    index: index,
                                    width: 150,
                                    headerTitle: data.usage.toString(),
                                  ),
                                  DataContainerWidget(
                                    index: index,
                                    width: 150,
                                    headerTitle: data.totalusage.toString(),
                                  ),
                                  DataContainerWidget(
                                    index: index,
                                    width: 300,
                                    headerTitle: data.createdDate,
                                  ),
                                ],
                              )),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox();
                      },
                      itemCount: snaps.data!.docs.length));
            }
          }),
    ];

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 130,
          color: const Color.fromARGB(255, 235, 231, 232),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 15),
                child: GooglePoppinsWidgets(
                  text: "COUPON MANAGEMENT",
                  fontsize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: ButtonContainerWidget(
                  text: "Search Student",
                ),
              ),
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                      onTap: () {
                        enterDetailsForCoupen(context);
                      },
                      child: const ButtonContainerWidget(text: 'Create Coupon'))
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            child: ResponsiveWebSite.isMobile(context)
                ? SizedBox(
                    height: 500,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(width: 400, child: listwidget[0]),
                    ),
                  )
                : SingleChildScrollView(
                    child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 600,
                      child: listwidget[0],
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
