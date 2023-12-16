import 'dart:developer';

import 'package:get/get.dart';
import 'package:scipro_website/view/core/core.dart';

class GetInvoiceController extends GetxController {
  RxString purchasedCourses = ''.obs;

  RxString invoiceNumber = ''.obs;
  RxString date = ''.obs;
  RxString studentName = ''.obs;
  RxString studentEmail = ''.obs;
  RxString totalPrice = ''.obs;
  RxString actualPrice=''.obs;
  RxString rxgstPrice = ''.obs;
  RxString gstnumber = ''.obs;
  RxString rxcgst = ''.obs;
  RxString rxsgst = ''.obs;

  Future<void> calculateGst(int totalPrice) async {
    final data =
        await dataserver.collection('Gst_settings').doc('percentage').get();

    final gst = await data.data()!['percentage'];

    final result = totalPrice * gst / 100;
   final gstprice= totalPrice-result;
    log('gst result  $result');
    actualPrice.value = gstprice.toString();
    rxgstPrice.value=result.toString();


    
  
  }
  


  Future<double> calculateCgst(int totalPrice) async {
    final data =
        await dataserver.collection('Gst_settings').doc('percentage').get();

    final gst = await data.data()!['percentage'];

    final result = totalPrice * gst / 100;
    log('gst result  $result');
  final cgst = result/2;
  

rxcgst.value=cgst.toString();
rxsgst.value =cgst.toString();
    return cgst;
  }
}
