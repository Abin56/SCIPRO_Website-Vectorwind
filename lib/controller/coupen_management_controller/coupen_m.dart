import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/coupen_management_controller/model/coupen_model.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/core/core.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:uuid/uuid.dart';

class CoupenManagementController extends GetxController {
  final TextEditingController coupenNameController = TextEditingController();
  final TextEditingController discountController = TextEditingController();
  final TextEditingController validtyController = TextEditingController();
  final TextEditingController uageCountController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  RxString studentUID = ''.obs;
  RxBool checkboxvalue = false.obs;

  Future<void> createCoupen(String coupenCode) async {
    final uuid = checkboxvalue.value == true
        ? studentUID.value.trim()
        : const Uuid().v1();
    final sever = dataserver.collection('CoupenManagement');
    final coupenDetails = CoupenManagementModel(
        coupenCode: "SCIPRO$coupenCode",
        email: checkboxvalue.value == true ? emailController.text.trim() : '',
        id: uuid,
        coupenName: coupenNameController.text.trim(),
        discount: int.parse(discountController.text.trim()),
        validity: int.parse(validtyController.text.trim()),
        usage: int.parse(uageCountController.text.trim()),
        totalusage: 0,
        createdDate: DateTime.now().toString(),
        forstudent: checkboxvalue.value);
    fetchStudentUid(emailController.text.trim()).then((value) async {
      sever.doc(uuid).set(coupenDetails.toMap()).then((value) {
        showToast(msg: "Coupen Created");
      });
    });
  }

  Future<void> deletecoupen(
      {required String docid, required BuildContext context}) async {
    final sever = dataserver.collection('CoupenManagement');

    customShowDilogBox(
        context: context,
        title: "Alert",
        children: [const Text("Do you want delete this CoupenCode ?")],
        doyouwantActionButton: true,
        actiononTapfuction: () async {
          await sever.doc(docid).delete().then((value) {
            Navigator.pop(context);
            Navigator.pop(context);
          });
        });
  }

  Future<void> fetchStudentUid(String email) async {
    final data = await dataserver
        .collection('StudentProfileCollection')
        .where('email', isEqualTo: email)
        .get();
    studentUID.value = data.docs[0].data()['uid'];
  }
}
