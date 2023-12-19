import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/core/core.dart';

class GetInvoiceController extends GetxController {
  RxString purchasedCourses = ''.obs;
  TextEditingController invoiceEnterController = TextEditingController();
  RxString invoiceNumber = ''.obs;
  RxString date = ''.obs;
  RxString studentName = ''.obs;
  RxString studentEmail = ''.obs;
  RxString totalPrice = ''.obs;
  RxString actualPrice = ''.obs;
  RxString rxgstPrice = ''.obs;
  RxString gstnumber = ''.obs;
  RxString rxcgst = ''.obs;
  RxString rxsgst = ''.obs;
  

  Future<void> calculateGst(int totalPrice) async {
    final data =
        await dataserver.collection('Gst_settings').doc('percentage').get();

    final gst = await data.data()!['percentage'];

    final result = totalPrice / gst;
    final gstprice = totalPrice - result.toInt();

    actualPrice.value = result.toInt().toString();
    final gsthalf = gstprice / 2;
    rxgstPrice.value = gsthalf.toInt().toString();
    log('gst result  ${rxgstPrice.value}');
     
  }

  // Future<double> calculateCgst(int totalPrice) async {
  //   final data =
  //       await dataserver.collection('Gst_settings').doc('percentage').get();

  //   final gst = await data.data()!['percentage'];

  //   final result = totalPrice * gst / 100;
  //   log('gst result  $result');
  //   final cgst = result / 2;

  //   // rxcgst.value = cgst.toString();
  //   // rxsgst.value = cgst.toString();
  //   return cgst;
  // }

  Future<void> setInvoiceNumber() async {
    final data = dataserver.collection("Invoice_number").doc('number');

    await data
        .update({"number": int.parse(invoiceEnterController.text.trim())}).then(
            (value) async {
      showToast(msg: "InvoiceNumber Updated");
    });
  }
}
