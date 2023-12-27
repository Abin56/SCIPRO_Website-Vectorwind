import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/subscribed_students_controller/model/subscribed_students_model.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/core/core.dart';

class SubscribedStudentsController extends GetxController {
  String className = "StudentProfileCollection";
  RxBool excelisLoading = false.obs;
  List<SubscribedStudentsModel> studentProfileList = [];

  Future<void> fetchAllStudents() async {
    final severRef = dataserver.collection('SubscribedStudents');

    // studentProfileList.clear();
    try {
      final QuerySnapshot<Map<String, dynamic>> data = await severRef.get();
      studentProfileList = data.docs
          .map((e) => SubscribedStudentsModel.fromMap(e.data()))
          .toList();
    } catch (e) {
      showToast(msg: "User Data Error");
      log(name: className, e.toString());
    }
  }

  @override
  void onInit() async {
    await fetchAllStudents();
    super.onInit();
  }
}
