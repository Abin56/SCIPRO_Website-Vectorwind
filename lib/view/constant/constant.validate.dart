import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const sw50 = SizedBox(
  width: 50,
);
const sw10 = SizedBox(
  width: 10,
);
const sw20 = SizedBox(
  width: 20,
);
const sh50 = SizedBox(
  height: 50,
);
const sh10 = SizedBox(
  height: 10,
);
const sh20 = SizedBox(
  height: 20,
);
const sh30 = SizedBox(
  height: 30,
);
void copyToClipboard(String text, BuildContext context) {
  Clipboard.setData(ClipboardData(text: text));
  // Optionally, you can provide feedback to the user, like a toast or a snackbar.
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Text copied to clipboard'),
    ),
  );
}

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

const String netWorkImagePathPerson =
    "https://www.seekpng.com/png/full/202-2024994_profile-icon-profile-logo-no-background.png";

String stringTimeToDateConvert(String date) {
  //String dateandtime convert to "dd-mm-yyyy" this format
  try {
    final DateTime dateFormat = DateTime.parse(date);
    return "${dateFormat.day}-${dateFormat.month}-${dateFormat.year}";
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }
  return '';
}

String? checkFieldEmpty(String? fieldContent) {
  //<-- add String? as a return type
  if (fieldContent == null || fieldContent.isEmpty) {
    return "Field is mandatory";
  }
  return null;
}

String? checkFieldEmailIsValid(String? fieldContent) {
  if (fieldContent == null) {
    return 'null';
  }
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern);
  final result = (regex.hasMatch(fieldContent)) ? true : false;
  if (result) {
    return null;
  } else {
    return "Email is not valid";
  }
}

String? checkFieldPhoneNumberIsValid(String? fieldContent) {
  if (fieldContent == null) {
    return 'null';
  }
  if (fieldContent.length >= 10) {
    return null;
  } else {
    return 'Please enter 10 digit number';
  }
}

String? checkFieldPasswordIsValid(String? fieldContent) {
  if (fieldContent == null) {
    return 'null';
  }
  if (fieldContent.length >= 6) {
    return null;
  } else {
    return 'Minimum 6 Charaters is required';
  }
}

String? checkFieldDateIsValid(String? fieldContent) {
  if (fieldContent == null) {
    return 'null';
  }
  // Define a regular expression pattern to match a date in the "dd-mm-yyyy" format
  String pattern = r'^\d{2}-\d{2}-\d{4}$';
  RegExp regex = RegExp(pattern);

  if (regex.hasMatch(fieldContent)) {
    // If the date matches the pattern, further validate it for valid date values.
    try {
      final parts = fieldContent.split('-');
      final day = int.tryParse(parts[0]);
      final month = int.tryParse(parts[1]);
      final year = int.tryParse(parts[2]);
      if (day != null && month != null && year != null) {
        final date = DateTime(year, month, day);
        if (date.year == year && date.month == month && date.day == day) {
          return null; // Valid date
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  return 'Date is not valid (dd-mm-yyyy)';
}

final GlobalKey<FormState> formKey = GlobalKey<FormState>();


// class  {
//   static String id = '';
// }
// class UserEmailandPasswordSaver{
//   static String userEmail='';
//   static String userPassword='';
// }
// const uuid = Uuid();