import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/subscribed_students_controller/model/user_after_subscription_model.dart';
import 'package:scipro_website/data/video_management/category_model.dart';
import 'package:scipro_website/data/video_management/course_model.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/core/core.dart';
import 'package:uuid/uuid.dart';

class SetUserAccessController extends GetxController {
  RxBool recCatisLoading = false.obs;
  RxBool isLoading = false.obs;
  RxString recCatID = ''.obs;
  RxString courseID = ''.obs;
  RxInt coursefee = 0.obs;
  RxString coursename = ''.obs;
  RxString studetName = ''.obs;
  RxString phonenumber = ''.obs;
  RxString emailid = ''.obs;
  RxInt duration = 0.obs;
  RxString expirydate = ''.obs;
  RxString studentUID = ''.obs;
  RxInt currentInvoiceNumber = 0.obs;

  List<CategoryModel> categoryModel = [];
  List<CourseModel> courseModel = [];

  Future<List<CategoryModel>> fetchRecCategory() async {
    final firebase = await dataserver.collection('recorded_course').get();

    for (var i = 0; i < firebase.docs.length; i++) {
      final list =
          firebase.docs.map((e) => CategoryModel.fromMap(e.data())).toList();
      categoryModel.add(list[i]);
    }

    return categoryModel;
  }

  Future<List<CourseModel>> fetchRecCourses() async {
    final firebase = await dataserver
        .collection('recorded_course')
        .doc(recCatID.value)
        .collection("course")
        .get();

    for (var i = 0; i < firebase.docs.length; i++) {
      final list =
          firebase.docs.map((e) => CourseModel.fromMap(e.data())).toList();
      courseModel.add(list[i]);
    }
    return courseModel;
  }

  Future<void> setUserAccess() async {
    log("SetAcess;;;;;;;;;;;;;;; ${currentInvoiceNumber.value}");
    final uuid = const Uuid().v1();
    final setAccessDetails = UserAfterPaymentModel(
        invoicenumber: currentInvoiceNumber.value,
        uid: studentUID.value,
        coursefee: coursefee.value,
        coursename: coursename.value,
        coursecategoryid: recCatID.value,
        studentname: studetName.value,
        phonenumber: phonenumber.value,
        emailid: emailid.value,
        courseid: courseID.value,
        duration: duration.value,
        expirydate: expirydate.value,
        joindate: DateTime.now().toString(),
        olduser: true,
        deactive: false);

    await fetchRecCategory().then(
        (value) async => await incrementInvoiceNumber().then((value) async {
              await dataserver
                  .collection('SubscribedStudents')
                  .doc(studentUID.value)
                  .collection('PurchasedCourses')
                  .doc(uuid)
                  .set(setAccessDetails.toMap())
                  .then((value) async {
                await dataserver
                    .collection('SubscribedStudents')
                    .doc(studentUID.value)
                    .set({
                  'uid': studentUID.value,
                  'email': emailid.value,
                  'studentname': studetName.value,
                  'phonenumber': phonenumber.value,
                  'joindate': DateTime.now().toString()
                }).then((value) async {
                  await dataserver
                      .collection('SubscribedStudents')
                      .doc(studentUID.value)
                      .collection('PurchasedCourses')
                      .doc(uuid)
                      .set({'docid': uuid}, SetOptions(merge: true));
                }).then((value) async {
                  Get.back();
                  return showToast(msg: 'Purchased Completed');
                });
              });
            }));
    // await incrementInvoiceNumber().then((value) async {

    //       .then((value) async {
    //   .then((value) async {

    //     });
    //   });
    // });
  }

  Future fetchUserDetails(String uid) async {
    final data =
        await dataserver.collection('StudentProfileCollection').doc(uid).get();
    studentUID.value = data.data()!['uid'];
    studetName.value = data.data()!['name'];
    phonenumber.value = data.data()!['phoneno'];
    emailid.value = data.data()!['email'];
    log("Selected Student Uid ${studentUID.value}");
  }

  Future<void> fetchcurrentInvoiceNumber() async {
    final data = await dataserver.collection("Invoice_number").get();
    int intdata = await data.docs[0].data()['number'];
    currentInvoiceNumber.value = intdata;
    log("Current invoice number == ${currentInvoiceNumber.value}");
  }

  Future<void> incrementInvoiceNumber() async {
    await dataserver
        .collection("Invoice_number")
        .doc('number')
        .update({'number': currentInvoiceNumber.value + 1});
  }
}
