import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scipro_website/controller/set_user_access_controller/set_user_controller.dart';
import 'package:scipro_website/controller/subscribed_students_controller/model/subscribed_students_model.dart';
import 'package:scipro_website/controller/subscribed_students_controller/subscribed_controller.dart';
import 'package:scipro_website/data/video_management/category_model.dart';
import 'package:scipro_website/data/video_management/course_model.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/back_container/back_container.dart';
import 'package:scipro_website/view/widgets/lottiewidget.dart';

class SetStudentAcessSearch extends SearchDelegate {
  final SetUserAccessController setUserAccessController =
      Get.put(SetUserAccessController());
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(
          Icons.clear,
          color: Colors.black,
        ));
    return null;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<SubscribedStudentsModel> suggestionList;

    if (query.isEmpty) {
      suggestionList =
          Get.find<SubscribedStudentsController>().studentProfileList;
    } else {
      suggestionList = Get.find<SubscribedStudentsController>()
          .studentProfileList
          .where(
              (item) => item.email.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    if (suggestionList.isEmpty) {
      return ListTile(
        title: GooglePoppinsWidgets(
          text: "User not found",
          fontsize: 18,
          fontWeight: FontWeight.w400,
        ),
      );
    }
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () async {
                setUserAccessController
                    .fetchUserDetails(suggestionList[index].uid);
                setuserAccessShowDialog(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  shape: const BeveledRectangleBorder(),
                  child: ListTile(
                    leading: const Icon(Icons.school_outlined),
                    title: GooglePoppinsWidgets(
                      text: suggestionList[index].email,
                      fontsize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: suggestionList.length,
        ),
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const SizedBox();
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
                        await setUserAccessController
                            .fetchcurrentInvoiceNumber()
                            .then((value) async {
                          setUserAccessController.setUserAccess();
                        });
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
