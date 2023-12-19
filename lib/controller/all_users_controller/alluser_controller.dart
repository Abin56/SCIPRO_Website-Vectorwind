import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/all_users_controller/model/all_users_model.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/core/core.dart';

class AllusersController extends GetxController {
  String className = "StudentProfileCollection";
  RxBool excelisLoading = false.obs;
  List<StudentProfileCreationModel> studentProfileList = [];

  Future<void> fetchAllStudents() async {
    final severRef = dataserver.collection('StudentProfileCollection');

    // studentProfileList.clear();
    try {
      final QuerySnapshot<Map<String, dynamic>> data = await severRef.get();
      studentProfileList = data.docs
          .map((e) => StudentProfileCreationModel.fromMap(e.data()))
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
