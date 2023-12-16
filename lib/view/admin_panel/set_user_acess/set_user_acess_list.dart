import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro_website/controller/set_user_access_controller/set_user_controller.dart';
import 'package:scipro_website/data/video_management/category_model.dart';
import 'package:scipro_website/data/video_management/course_model.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/back_container/back_container.dart';
import 'package:scipro_website/view/widgets/lottiewidget.dart';

import '../../../controller/set_user_access_controller/model/set_user_access_model.dart';
import '../../constant/constant.validate.dart';
import '../../widgets/grid_table_container/grid_table_container.dart';

class SetUserAcess extends StatelessWidget {
  final SetUserAccessController setUserAccessController =
      Get.put(SetUserAccessController());
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
                        onTap: () async {
                          setUserAccessController.fetchUserDetails(data.uid);
                          setuserAccessShowDialog(context);
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
    showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GooglePoppinsWidgets(
                    text: "Offline Payment",
                    fontsize: 13,
                    fontWeight: FontWeight.w600),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: BackButtonContainerWidget(),
                )
              ],
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  SizedBox(
                      height: 35,
                      width: 250,
                      child: Center(
                        child: DropdownSearch<CategoryModel>(
                          autoValidateMode: AutovalidateMode.always,
                          asyncItems: (value) {
                            setUserAccessController.categoryModel.clear();

                            return setUserAccessController.fetchRecCategory();
                          },
                          itemAsString: (value) => value.name,
                          onChanged: (value) async {
                            setUserAccessController.recCatisLoading.value =
                                true;
                            if (value != null) {
                              setUserAccessController.recCatID.value = value.id;
                            }
                          },
                          dropdownDecoratorProps: DropDownDecoratorProps(
                              baseStyle: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Colors.black.withOpacity(0.7))),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(() => setUserAccessController.recCatisLoading.value ==
                          true
                      ? SizedBox(
                          height: 35,
                          width: 250,
                          child: Center(
                            child: DropdownSearch<CourseModel>(
                              autoValidateMode: AutovalidateMode.always,
                              asyncItems: (value) {
                                setUserAccessController.courseModel.clear();

                                return setUserAccessController
                                    .fetchRecCourses();
                              },
                              itemAsString: (value) => value.courseName,
                              onChanged: (value) async {
                                if (value != null) {
                                  setUserAccessController.isLoading.value =
                                      true;
                                  final DateTime exdate = DateTime.now()
                                      .add(Duration(days: value.duration));
                                  setUserAccessController.courseID.value =
                                      value.id;
                                  setUserAccessController.coursefee.value =
                                      value.courseFee.toInt();
                                  setUserAccessController.coursename.value =
                                      value.courseName;
                                  setUserAccessController.duration.value =
                                      value.duration.toInt();
                                  setUserAccessController.expirydate.value =
                                      exdate.toString();
                                  await Future.delayed(
                                          const Duration(seconds: 5))
                                      .then((value) => setUserAccessController
                                          .isLoading.value = false);
                                }
                              },
                              dropdownDecoratorProps: DropDownDecoratorProps(
                                  baseStyle: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7))),
                            ),
                          ))
                      : const LoadingLottieWidget(height: 100, width: 200)),
                ],
              ),
            ),
            actions: <Widget>[
              Obx(() => setUserAccessController.isLoading.value == true
                  ? GestureDetector(
                      onTap: () async {
                        setUserAccessController.setUserAccess();
                      },
                      child: Container(
                        height: 40,
                        width: 250,
                        decoration: const BoxDecoration(
                          color: themeColorBlue,
                        ),
                        child: Center(
                          child: GooglePoppinsWidgets(
                              text: 'Set Access',
                              color: cWhite,
                              fontsize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  : const LoadingLottieWidget(height: 100, width: 200)),
            ]);
      },
    );
  }
}
