import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/core/core.dart';

class GetInvoiceController extends GetxController {
  TextEditingController invoiceEnterController = TextEditingController();
  RxInt currentInvoiceNumber = 0.obs;
  RxString purchasedCourses = ''.obs;
  RxString amount = ''.obs;
  RxString invoiceNumber = ''.obs;
  RxString date = ''.obs;
  RxString studentName = ''.obs;
  RxString studentEmail = ''.obs;
  RxString actualPrice = ''.obs;
  RxString totalPrice = ''.obs;
  RxString gstPrice = ''.obs;
  RxString gstnumber = ''.obs;
  RxString cgst = ''.obs;
  RxString sgst = ''.obs;

  Future<int> gercurrentInvoiceNumber() async {
    final data =
        await dataserver.collection("Invoice_number").doc('number').get();
    final currentNumber = await data.data()!['number'];
    currentInvoiceNumber.value = currentNumber;
    return currentInvoiceNumber.value;
  }

  Future<void> setInvoiceNumber() async {
    final data = dataserver.collection("Invoice_number").doc('number');

    final update = data.update(
        {'number': invoiceEnterController.text.trim()}).then((value) async {
      showToast(msg: "InvoiceNumber Updated");
    });
    return update;
  }
}
