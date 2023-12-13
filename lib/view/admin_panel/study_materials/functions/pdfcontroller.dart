import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class PdfUploadController extends GetxController {
  Rx<Uint8List?> selectedPdf = Rx<Uint8List?>(null);
  Rx<String> fileName = 'No PDF selected'.obs;

  Rx<bool> loadingStatus = false.obs;

  void selectPdf(Uint8List pdfBytes) {
    selectedPdf.value = pdfBytes;
  }

  Future<void> uploadPdf(
    doc1,
    doc2,
  ) async {
    String uid = Uuid().v1();

    log('started');
    loadingStatus.value = true;
    if (selectedPdf.value == null) {
      // Handle no file selected
      log('mmmmmmmm');
      return;
    }
    log('happening');
    final pdfRef = FirebaseStorage.instance
        .ref('Study Materials')
        .child('${DateTime.now().millisecondsSinceEpoch}.pdf');

    await pdfRef.putData(selectedPdf.value!).whenComplete(() async {
      final pdfUrl = await pdfRef.getDownloadURL();

      await FirebaseFirestore.instance
          .collection('recorded_course')
          .doc(doc1)
          .collection('course')
          .doc(doc2)
          .collection('StudyMaterials')
          .doc(uid)
          .set({'url': pdfUrl, 'fileName': fileName.value, 'id': uid});
      loadingStatus.value = false;
      log(fileName.value);
      log('done');
      fileName.value = 'No PDF selected';
      // Optionally, you can reset the selected PDF after successful upload
      selectedPdf.value = null;

      // Show a success message or navigate to another screen
    });
  }

  Future<void> pickDocument() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null) {
        Uint8List fileBytes = result.files.first.bytes!;
        selectedPdf.value = result.files.first.bytes!;

        selectedPdf.value = fileBytes;
        fileName.value = result.files.first.name;
        log(fileName.value);
        //  fileName = result.files.first.name.obs;
        // return fileName.value;
        // Upload file
      }
    } catch (e) {
      // return e.toString();
    }

    // return '';
  }
}
