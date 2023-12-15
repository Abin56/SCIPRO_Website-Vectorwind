import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/coupen_management_controller/coupen_m.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/textform_field_Widget/textformfieldWidget.dart';

enterDetailsForCoupen(BuildContext context) {
  CoupenManagementController coupenManagementController =
      Get.put(CoupenManagementController());

  return customShowDilogBox(
      context: context,
      title: "Enter Details",
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormFiledContainerWidget(
            controller: coupenManagementController.coupenNameController,
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
            controller: coupenManagementController.uageCountController,
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
                controller: coupenManagementController.emailController,
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
        coupenManagementController.createCoupen(coupenCode);
      },
      actiontext: 'Create Coupen',
      doyouwantActionButton: true);
}
