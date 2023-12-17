import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/coupen_management_controller/coupen_m.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/back_container/back_container.dart';
import 'package:scipro_website/view/widgets/lottiewidget.dart';
import 'package:scipro_website/view/widgets/textform_field_Widget/textformfieldWidget.dart';

enterDetailsForCoupen(BuildContext context) {
  CoupenManagementController coupenManagementController =
      Get.put(CoupenManagementController());
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
                  text: "Enter Details",
                  fontsize: 13,
                  fontWeight: FontWeight.w600),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: BackButtonContainerWidget(),
              )
            ],
          ),
          content: SizedBox(
            width: 300,
            child: SingleChildScrollView(
              child: ListBody(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormFiledContainerWidget(
                      controller:
                          coupenManagementController.coupenNameController,
                      hintText: "Coupen Name",
                      title: "Coupen Name",
                      width: 200,
                      validator: checkFieldEmpty,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormFiledContainerWidget(
                      controller: coupenManagementController.discountController,
                      hintText: "Enter number eg 10,25,50..",
                      title: "Discount %",
                      width: 200,
                      validator: checkFieldEmpty,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormFiledContainerWidget(
                      controller: coupenManagementController.validtyController,
                      hintText: "Enter  days eg 29,56,84..",
                      title: "Enter Validity (Days)",
                      width: 200,
                      validator: checkFieldEmpty,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormFiledContainerWidget(
                      controller:
                          coupenManagementController.uageCountController,
                      hintText: "Enter count eg 1,28,100,",
                      title: "Usage Count",
                      width: 200,
                      validator: checkFieldEmpty,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Do you want set for a student ?",
                        style: TextStyle(
                            color: cBlack.withOpacity(0.7), fontSize: 12),
                      ),
                      Obx(() => Checkbox(
                          value: coupenManagementController.checkboxvalue.value,
                          activeColor: Colors.green,
                          onChanged: (newValue) {
                            coupenManagementController.checkboxvalue.value =
                                newValue!;

                            const Text('Remember me');
                          })),
                    ],
                  ),
                  Obx(() {
                    if (coupenManagementController.checkboxvalue.value ==
                        true) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormFiledContainerWidget(
                          controller:
                              coupenManagementController.emailController,
                          hintText: "User email ",
                          title: "Enter email",
                          width: 200,
                          validator: checkFieldEmpty,
                        ),
                      );
                    } else {
                      return const Text('');
                    }
                  })
                ],
              ),
            ),
          ),
          actions: <Widget>[
            Obx(() =>
                coupenManagementController.checkmailisLoading.value == false
                    ? GestureDetector(
                        onTap: () async {
                          final String coupenCode = getRandomString(20);
                          coupenManagementController.checkboxvalue.value == true
                              ? coupenManagementController
                                  .fetchStudentUid(coupenManagementController
                                      .emailController.text
                                      .trim())
                                  .then((value) async {
                                  await coupenManagementController
                                      .createCoupen(coupenCode);
                                })
                              : await coupenManagementController
                                  .createCoupen(coupenCode);
                        },
                        child: Container(
                          height: 40,
                          width: 250,
                          decoration: const BoxDecoration(
                            color: themeColorBlue,
                          ),
                          child: Center(
                            child: GooglePoppinsWidgets(
                                text: 'create Coupen',
                                color: cWhite,
                                fontsize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    : const LoadingLottieWidget(height: 40, width: 250)),
          ]);
    },
  );
  // return customShowDilogBox(
  //     context: context,
  //     title: "Enter Details",
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: TextFormFiledContainerWidget(
  //           controller: coupenManagementController.coupenNameController,
  //           hintText: "Coupen Name",
  //           title: "Coupen Name",
  //           width: 200,
  //           validator: checkFieldEmpty,
  //         ),
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: TextFormFiledContainerWidget(
  //           controller: coupenManagementController.discountController,
  //           hintText: "Enter number eg 10,25,50..",
  //           title: "Discount %",
  //           width: 200,
  //           validator: checkFieldEmpty,
  //         ),
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: TextFormFiledContainerWidget(
  //           controller: coupenManagementController.validtyController,
  //           hintText: "Enter  days eg 29,56,84..",
  //           title: "Enter Validity (Days)",
  //           width: 200,
  //           validator: checkFieldEmpty,
  //         ),
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: TextFormFiledContainerWidget(
  //           controller: coupenManagementController.uageCountController,
  //           hintText: "Enter count eg 1,28,100,",
  //           title: "Usage Count",
  //           width: 200,
  //           validator: checkFieldEmpty,
  //         ),
  //       ),
  //       Row(
  //         children: [
  //           Text(
  //             "Do you want set for a student ?",
  //             style: TextStyle(color: cBlack.withOpacity(0.7), fontSize: 12),
  //           ),
  //           Obx(() => Checkbox(
  //               value: coupenManagementController.checkboxvalue.value,
  //               activeColor: Colors.green,
  //               onChanged: (newValue) {
  //                 coupenManagementController.checkboxvalue.value = newValue!;

  //                 const Text('Remember me');
  //               })),
  //         ],
  //       ),
  //       Obx(() {
  //         if (coupenManagementController.checkboxvalue.value == true) {
  //           return Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: TextFormFiledContainerWidget(
  //               controller: coupenManagementController.emailController,
  //               hintText: "User email ",
  //               title: "Enter email",
  //               width: 200,
  //               validator: checkFieldEmpty,
  //             ),
  //           );
  //         } else {
  //           return const Text('');
  //         }
  //       })
  //     ],
  //     actiononTapfuction: () async {
  //       final String coupenCode = getRandomString(20);
  //       coupenManagementController.createCoupen(coupenCode);
  //     },
  //     actiontext: 'Create Coupen',
  //     doyouwantActionButton: true);
}
