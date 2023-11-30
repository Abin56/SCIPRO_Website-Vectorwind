import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Future<String> dateTimePicker(BuildContext context) async {
//   DateTime? dateTime = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(1700),
//       lastDate: DateTime(2500));
//   if (dateTime != null) {
//     return DateFormat("dd-M-yyyy").format(dateTime);
//   } else {
//     return '';
//   }
// }

Future<int> dateTimePickerTimeStamp(BuildContext context) async {
  DateTime? dateTime = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1700),
      lastDate: DateTime(2500));
  if (dateTime != null) {
    return dateTime.millisecondsSinceEpoch;
  } else {
    return -1;
  }
}

String timeStampToDateFormat(int timeStamp) {
  if (timeStamp == -1) {
    return "";
  }
  try {
    DateTime dt = DateTime.fromMillisecondsSinceEpoch(timeStamp);
    String d12 = DateFormat('dd-MM-yyyy').format(dt);

    return d12;
  } catch (e) {
    log("Format error");
    return "";
  }
}

Future<String> timePicker(BuildContext context) async {
  final TimeOfDay? time =
      await showTimePicker(context: context, initialTime: TimeOfDay.now());
  if (time != null) {
    // Get the current time of day using Dart's DateTime class

// Convert the TimeOfDay object to a custom 12-hour format with AM/PM
    String formattedTime =
        '${_getFormattedHour(time)}:${time.minute.toString().padLeft(2, '0')} ${_getAmPm(time)}';

    return formattedTime;
  } else {
    return "";
  }
}

// Helper function to get AM or PM based on the TimeOfDay
String _getAmPm(TimeOfDay timeOfDay) {
  return timeOfDay.period == DayPeriod.am ? 'AM' : 'PM';
}

// Helper function to format the hour in 12-hour format
String _getFormattedHour(TimeOfDay timeOfDay) {
  String hour =
      (timeOfDay.hourOfPeriod == 0 ? 12 : timeOfDay.hourOfPeriod).toString();
  return hour;
}