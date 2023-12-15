import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:scipro_website/data/video_management/category_model.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/core/core.dart';
import 'package:scipro_website/view/widgets/lottiewidget.dart';

import '../../view/colors/colors.dart';
import '../../view/constant/constant.validate.dart';
import '../../view/fonts/google_poppins.dart';
import '../../view/widgets/back_container/back_container.dart';
import '../../view/widgets/textform_field_Widget/textformfieldWidget.dart';

class NotificationManagementController extends GetxController {
  RxBool allStudentMessageisLoading = false.obs;

  List<String> allUserDeviceToken = [];
  RxString selectedCat = ''.obs;
  List<CategoryModel> categoryModel = [];

  Future<List<CategoryModel>> fetchRecCategory() async {
    final firebase =
        await FirebaseFirestore.instance.collection('recorded_course').get();

    for (var i = 0; i < firebase.docs.length; i++) {
      final list =
          firebase.docs.map((e) => CategoryModel.fromMap(e.data())).toList();
      categoryModel.add(list[i]);
    }
    return categoryModel;
  }
  Future sendMessageForSubStudents()async{

  }
  
  Future sendNotificationAllStudents(String body, String title) async {
    fetchAllUsersDeviceToken().then((value) async {
      await sendPushMessage(body, title);
    });
  }

  Future<List<String>> fetchAllUsersDeviceToken() async {
    final sever = dataserver.collection('UserDeviceToken');
    final result = await sever.get();

    for (var element in result.docs) {
      String deviceToken = element.data()['deviceToken'];
      allUserDeviceToken.add(deviceToken);
    }
    print(allUserDeviceToken);

    return allUserDeviceToken;
  }

  Future<void> sendPushMessage(String body, String title) async {
    log("Send Push Message");
    for (var i = 0; i < allUserDeviceToken.length; i++) {
      try {
        final reponse = await http.post(
          Uri.parse('https://fcm.googleapis.com/fcm/send'),
          headers: <String, String>{
            'Content-Type': 'application/json',
            'Authorization':
                'key=AAAArVH5gWk:APA91bGhwnnUDTQJpGd2G5saUhzKwvIG_lpottSeVS_EMwE_UY2RX79jrtYBILeUl2V_URZUUTGSrPStS4cku6iJ1drG85XeZ0b8mMbaqEGudkEnEhtcLowiF5nDT85-_czIRYYIMJW9'
          },
          body: jsonEncode(
            <String, dynamic>{
              'priority': 'high',
              'data': <String, dynamic>{
                'click_action': 'FLUTTER_NOTIFICATION_CLICK',
                'status': 'done',
                'body': body,
                'title': title,
              },
              "notification": <String, dynamic>{
                'title': title,
                'body': body,
                'android_channel_id': 'high_importance_channel'
              },
              'to': allUserDeviceToken[i],
            },
          ),
        );
        log("response --L>>  ${reponse.body}");
      } catch (e) {
        if (kDebugMode) {
          log("error push Notification");
        }
      }
    }
    showToast(msg: 'Message sent successfully' );
    allStudentMessageisLoading.value = false;
  }

  sendMessageForAllStudents(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController messagecontroller = TextEditingController();
    final TextEditingController titlecontroller = TextEditingController();
    return showDialog(
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
                    text: 'Message', fontsize: 13, fontWeight: FontWeight.w600),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: BackButtonContainerWidget(),
                )
              ],
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormFiledContainerWidget(
                          controller: titlecontroller,
                          hintText: 'Enter title',
                          title: 'Enter title',
                          width: 400,
                          validator: checkFieldEmpty,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextFormFiledContainerWidget(
                            controller: messagecontroller,
                            hintText: 'Enter Your message',
                            title: 'Enter Your message',
                            width: 400,
                            validator: checkFieldEmpty,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            actions: <Widget>[
              Obx(() {
                if (allStudentMessageisLoading.value==true) {
                  return const LoadingLottieWidget(height: 50, width: 200);
                  
                }else{
                  return
                  GestureDetector(
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        allStudentMessageisLoading.value = true;
                        await sendNotificationAllStudents(
                            messagecontroller.text, titlecontroller.text).then((value) => showToast);
                      }
                      // await sendNotificationAllStudents(controller.text,"SCI PRO");

                      messagecontroller.clear();
                      titlecontroller.clear();
                    },
                    child: Container(
                      height: 40,
                      width: 250,
                      decoration: const BoxDecoration(
                        color: themeColorBlue,
                      ),
                      child: Center(
                        child: GooglePoppinsWidgets(
                            text: 'Sent',
                            color: cWhite,
                            fontsize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                }
              }),
            ]);
      },
    );
  }

 
  courseWiseSentingMessageAllstudents(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController messagecontroller = TextEditingController();
    final TextEditingController titlecontroller = TextEditingController();
    return showDialog(
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
                    text: 'Message', fontsize: 13, fontWeight: FontWeight.w600),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: BackButtonContainerWidget(),
                )
              ],
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormFiledContainerWidget(
                          controller: titlecontroller,
                          hintText: 'Enter title',
                          title: 'Enter title',
                          width: 400,
                          validator: checkFieldEmpty,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextFormFiledContainerWidget(
                            controller: messagecontroller,
                            hintText: 'Enter Your message',
                            title: 'Enter Your message',
                            width: 400,
                            validator: checkFieldEmpty,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            actions: <Widget>[
              Obx(() {
                if (allStudentMessageisLoading.value==true) {
                  return const LoadingLottieWidget(height: 50, width: 200);
                  
                }else{
                  return
                  GestureDetector(
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        allStudentMessageisLoading.value = true;
                        await sendNotificationAllStudents(
                            messagecontroller.text, titlecontroller.text).then((value) => showToast);
                      }
                      // await sendNotificationAllStudents(controller.text,"SCI PRO");

                      messagecontroller.clear();
                      titlecontroller.clear();
                    },
                    child: Container(
                      height: 40,
                      width: 250,
                      decoration: const BoxDecoration(
                        color: themeColorBlue,
                      ),
                      child: Center(
                        child: GooglePoppinsWidgets(
                            text: 'Sent',
                            color: cWhite,
                            fontsize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                }
              }),
            ]);
      },
    );
  }
}