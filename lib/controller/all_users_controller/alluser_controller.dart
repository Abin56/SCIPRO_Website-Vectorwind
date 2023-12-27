import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/all_users_controller/model/all_users_model.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/core/core.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';

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

  seeStudentDetails(
      BuildContext context,
      String userName,
      String emailid,
      String phonNo,
      String address,
      String district,
      String state,
      String pincode,
      String imageUrl) async {
    return customShowDilogBox(
        context: context,
        title: "Student Details",
        children: [
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),
          Row(
            children: [
              GooglePoppinsWidgets(
                text: "UserName :",
                fontsize: 11,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              GooglePoppinsWidgets(text: userName, fontsize: 11)
            ],
          ),
          Row(
            children: [
              GooglePoppinsWidgets(
                text: "Email :",
                fontsize: 11,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              GooglePoppinsWidgets(text: emailid, fontsize: 11)
            ],
          ),
          Row(
            children: [
              GooglePoppinsWidgets(
                text: "PhoneNo :",
                fontsize: 11,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              GooglePoppinsWidgets(text: phonNo, fontsize: 11)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: [
                GooglePoppinsWidgets(
                  text: "Address :",
                  fontsize: 11,
                  fontWeight: FontWeight.w600,
                ),
                const Spacer(),
                GooglePoppinsWidgets(text: address, fontsize: 11)
              ],
            ),
          ),
          Row(
            children: [
              GooglePoppinsWidgets(
                text: "District :",
                fontsize: 11,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              GooglePoppinsWidgets(text: district, fontsize: 11)
            ],
          ),
          Row(
            children: [
              GooglePoppinsWidgets(
                text: "State :",
                fontsize: 11,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              GooglePoppinsWidgets(text: state, fontsize: 11)
            ],
          ),
          Row(
            children: [
              GooglePoppinsWidgets(
                text: "Pincode :",
                fontsize: 11,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              GooglePoppinsWidgets(text: pincode, fontsize: 11)
            ],
          ),
        ],
        doyouwantActionButton: true);
  }

  @override
  void onInit() async {
    await fetchAllStudents();
    super.onInit();
  }
}
