// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/get_invoice_controller/get_invoice_controller.dart';
import 'package:scipro_website/view/admin_panel/get%20invoice/get_invoice.dart';
import 'package:scipro_website/view/widgets/button_container_widget/button_container_widget.dart';

import '../../../controller/subscribed_students_controller/model/user_after_subscription_model.dart';
import '../../colors/colors.dart';
import '../../constant/constant.validate.dart';
import '../../fonts/google_poppins.dart';
import '../../widgets/custom_showDilog/custom_showdilog.dart';
import '../../widgets/responsive/responsive.dart';

subscribedstudentdetaildialogbox(BuildContext context, String studentID) {
  final GetInvoiceController getinvoicecontroller =
      Get.put(GetInvoiceController());
  return customShowDilogBox(
      context: context,
      title: 'Subscribed Students',
      children: [
        // stream: FirebaseFirestore.instance.collection('SubscribedStudents').doc(studentID),

        StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('SubscribedStudents')
                .doc(studentID)
                .collection('PurchasedCourses')
                .snapshots(),
            builder: (context, snapshots) {
              if (snapshots.hasData) {
                return SizedBox(
                  height: 500,
                  width: 500,
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      final data = UserAfterPaymentModel.fromMap(
                          snapshots.data!.docs[index].data());
                      return Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: themeColorBlue)),
                        child: Column(
                          children: [
                            ResponsiveWebSite.isMobile(context)
                                ? Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Container(
                                            height: 30,
                                            width: 100,
                                            color: themeColorBlue,
                                            child: Center(
                                                child: GooglePoppinsWidgets(
                                              text: data.coursename,
                                              fontsize:
                                                  ResponsiveWebSite.isMobile(
                                                          context)
                                                      ? 12
                                                      : 15,
                                              color: cWhite,
                                              textAlign: TextAlign.center,
                                              fontWeight: FontWeight.bold,
                                            )),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 10, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                  child: GooglePoppinsWidgets(
                                                text: 'Expired Date:',
                                                fontsize:
                                                    ResponsiveWebSite.isMobile(
                                                            context)
                                                        ? 12
                                                        : 14,
                                                fontWeight:
                                                    ResponsiveWebSite.isMobile(
                                                            context)
                                                        ? FontWeight.normal
                                                        : FontWeight.w600,
                                              )),
                                              Expanded(
                                                  child: GooglePoppinsWidgets(
                                                text: dateConveter(
                                                    DateTime.parse(
                                                        data.expirydate)),
                                                fontsize:
                                                    ResponsiveWebSite.isMobile(
                                                            context)
                                                        ? 12
                                                        : 14,
                                              )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10, right: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 30,
                                            width: 100,
                                            color: themeColorBlue,
                                            child: Center(
                                                child: GooglePoppinsWidgets(
                                              text: data.coursename,
                                              fontsize:
                                                  ResponsiveWebSite.isMobile(
                                                          context)
                                                      ? 12
                                                      : 15,
                                              color: cWhite,
                                              textAlign: TextAlign.center,
                                              fontWeight: FontWeight.bold,
                                            )),
                                          ),
                                        ),
                                        const Spacer(),
                                        Expanded(
                                            child: GooglePoppinsWidgets(
                                          text:
                                              'Expired Date:${dateConveter(DateTime.parse(data.expirydate))}',
                                          fontsize: ResponsiveWebSite.isMobile(
                                                  context)
                                              ? 12
                                              : 14,
                                          fontWeight:
                                              ResponsiveWebSite.isMobile(
                                                      context)
                                                  ? FontWeight.normal
                                                  : FontWeight.w600,
                                        )),
                                      ],
                                    ),
                                  ),
                            TextRowWidget(
                              data: data,
                              firstText: 'Join Date:',
                              secondText:
                                  dateConveter(DateTime.parse(data.joindate)),
                            ),
                            TextRowWidget(
                              data: data,
                              firstText: 'Course Fee:',
                              secondText: data.coursefee.toString(),
                            ),
                            ResponsiveWebSite.isMobile(context)
                                ? Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            GooglePoppinsWidgets(
                                              text: 'Status',
                                              fontsize:
                                                  ResponsiveWebSite.isMobile(
                                                          context)
                                                      ? 12
                                                      : 14,
                                              fontWeight:
                                                  ResponsiveWebSite.isMobile(
                                                          context)
                                                      ? FontWeight.normal
                                                      : FontWeight.w600,
                                            ),
                                            const Spacer(),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: Container(
                                                  height: 30,
                                                  width: 110,
                                                  color: data.deactive == false
                                                      ? cGreen
                                                      : cred,
                                                  child: Center(
                                                      child:
                                                          GooglePoppinsWidgets(
                                                    text: data.deactive == false
                                                        ? 'Active'
                                                        : 'Deactivated',
                                                    fontsize: ResponsiveWebSite
                                                            .isMobile(context)
                                                        ? 10
                                                        : 12,
                                                    color: cWhite,
                                                    textAlign: TextAlign.center,
                                                  )),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: GestureDetector(
                                              onTap: () {
                                                generateInvoice();
                                              },
                                              child:
                                                  const ButtonContainerWidget(
                                                text: 'Get Invoice',
                                              )),
                                        )
                                      ],
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        GooglePoppinsWidgets(
                                          text: 'Status',
                                          fontsize: ResponsiveWebSite.isMobile(
                                                  context)
                                              ? 12
                                              : 14,
                                          fontWeight:
                                              ResponsiveWebSite.isMobile(
                                                      context)
                                                  ? FontWeight.normal
                                                  : FontWeight.w600,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Container(
                                              height: 30,
                                              width: 110,
                                              color: data.deactive == false
                                                  ? cGreen
                                                  : cred,
                                              child: Center(
                                                  child: GooglePoppinsWidgets(
                                                text: data.deactive == false
                                                    ? 'Active'
                                                    : 'Deactivated',
                                                fontsize:
                                                    ResponsiveWebSite.isMobile(
                                                            context)
                                                        ? 10
                                                        : 12,
                                                color: cWhite,
                                                textAlign: TextAlign.center,
                                              )),
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        GestureDetector(
                                            onTap: () async {
                                              getinvoicecontroller
                                                  .calculateCgst(data.coursefee)
                                                  .toString();
                                              getinvoicecontroller
                                                  .calculateGst(data.coursefee)
                                                  .toString();
                                              getinvoicecontroller
                                                      .purchasedCourses.value =
                                                  data.coursename; ////course name
                                              getinvoicecontroller
                                                      .studentName.value =
                                                  data.studentname; //////student name

                                              getinvoicecontroller.date.value =
                                                  data.joindate;
                                              getinvoicecontroller ///////join date
                                                      .studentEmail
                                                      .value =
                                                  data.emailid; ////////email
                                              getinvoicecontroller
                                                      .invoiceNumber.value =
                                                  '001'; /////invoice num
                                              getinvoicecontroller
                                                      .totalPrice.value =
                                                  data.coursefee
                                                      .toString(); //////total price
                                              getinvoicecontroller
                                                      .totalPrice.value =
                                                  data.coursefee
                                                      .toString(); //////actual price

                                              // getinvoicecontroller
                                              //         .gstPrice.value 
                                              //         =
                                              //     getinvoicecontroller
                                              //         .calculateGst(
                                              //             data.coursefee)
                                              //         .toString(); ////////gst price

                                              // getinvoicecontroller
                                              //     .calculateCgst(
                                              //         data.coursefee)
                                              //     .toString(); //////cgst

                                              // getinvoicecontroller
                                              //     .calculateCgst(
                                              //         data.coursefee)
                                              // .toString(); //////sgst
                                              Future.delayed(const Duration(
                                                      seconds: 2))
                                                  .then((value) async {
                                                return generateInvoice();
                                              });
                                            },
                                            child: const ButtonContainerWidget(
                                                text: 'Get Invoice'))
                                      ],
                                    ),
                                  ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: snapshots.data!.docs.length,
                  ),
                );
              } else {
                return const Center(child: Text('No data Found'));
              }
            })
      ],
      doyouwantActionButton: false);
}

class TextRowWidget extends StatelessWidget {
  String firstText;
  String secondText;
  TextRowWidget(
      {super.key,
      required this.data,
      required this.firstText,
      required this.secondText});

  final UserAfterPaymentModel data;

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
