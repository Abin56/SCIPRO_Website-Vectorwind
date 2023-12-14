import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:scipro_website/view/core/core.dart';

class NotificationManagementController extends GetxController {
  List<String> allUserDeviceToken = [];

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
  }
}
