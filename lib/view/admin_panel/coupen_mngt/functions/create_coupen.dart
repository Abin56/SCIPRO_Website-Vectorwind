import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/coupen_management_controller/coupen_m.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/widgets/button%20container%20widget/button_container_widget.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/textform%20feild%20Widget/textformfeildWidget.dart';

enterDetailsForCoupen(BuildContext context) {
  CoupenManagementController coupenManagementController =
      Get.put(CoupenManagementController());

  TextEditingController courseNameTextController = TextEditingController();
  return customShowDilogBox(
      context: context,
      title: "Enter Details",
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormFiledContainerWidget(
            controller: courseNameTextController,
            hintText: "Coupon Name",
            title: "Coupon Name",
            width: 200,
            validator: checkFieldEmpty,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormFiledContainerWidget(
            // controller: ,
            hintText: "Enter number eg 10,25,50..",
            title: "Discount %",
            width: 200,
            validator: checkFieldEmpty,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormFiledContainerWidget(
            // controller: ,
            hintText: "Enter  days eg 29,56,84..",
            title: "Enter Validity (Days)",

            width: 200,
            validator: checkFieldEmpty,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormFiledContainerWidget(
            // controller: ,
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
              style: TextStyle(color: cBlack.withOpacity(0.7), fontSize: 12),
            ),
            Obx(() => Checkbox(
                value: coupenManagementController.checkboxvalue.value,
                activeColor: Colors.green,
                onChanged: (newValue) {
                  coupenManagementController.checkboxvalue.value = newValue!;

                  const Text('Remember me');
                })),
          ],
        ),
        Obx(() {
          if (coupenManagementController.checkboxvalue.value == true) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormFiledContainerWidget(
                // controller: ,
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
      actiononTapfuction: () async {
        final String coupenCode = getRandomString(20);
        customShowDilogBox(
            context: context,
            title: 'Coupon Code',
            children: [
              SizedBox(
                height: 200,
                width: 400,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            'When use this couponcode add SCIPRO (eg SCIPROaJI34HNdet)',
                            style: TextStyle(
                                color: cBlack,
                                fontSize: 11,
                                fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(child: ButtonContainerWidget(text: coupenCode)),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                            onTap: () async {
                              copyToClipboard(coupenCode, context);
                              await Future.delayed(const Duration(seconds: 1))
                                  .then((value) {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              });
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
                                            fontWeight: FontWeight.w600))),
                              ),
                            ))
                      ],
                    )),
              ),
            ],
            doyouwantActionButton: false);
      },
      actiontext: 'Create Coupon',
      doyouwantActionButton: true);
}
