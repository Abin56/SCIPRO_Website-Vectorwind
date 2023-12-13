import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:get/get.dart';
import 'package:scipro_website/view/admin_panel/study_materials/functions/pdfcontroller.dart';
import 'package:scipro_website/view/admin_panel/study_materials/view_uploaded_studymaterials.dart';

class PdfUploadScreen extends StatelessWidget {
  PdfUploadScreen({Key? key, required this.courseDoc, required this.courseDoc2})
      : super(key: key);
  final PdfUploadController _pdfUploadController =
      Get.put(PdfUploadController());

  Uint8List? filee;
  String courseDoc;
  String courseDoc2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Upload'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                _pdfUploadController.pickDocument();
                //  String fileName = await pickDocument();
              },
              child: Text('Select PDF'),
            ),
            SizedBox(height: 16),
            Obx(() => Text(_pdfUploadController.fileName.value.toString())),
            // Obx(() {
            //   final selectedPdf = _pdfUploadController.selectedPdf.value;
            //   return selectedPdf != null
            //       ? Text('Selected PDF: ${selectedPdf.length} bytes')
            //       : Text('No PDF selected');
            // }),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _uploadPdf(),
              child: Text('Upload PDF'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ViewUploadedStudyMaterials(
                          courseDoc1: courseDoc, courseDoc2: courseDoc2))),
              child: Text('View Uploaded PDF'),
            ),
          ],
        ),
      ),
    );
  }

  Future<Uint8List?> _loadPdfFromDevice() async {
    // Implement a method to load PDF from device (e.g., file picker)
    // Return the Uint8List representation of the PDF
  }

  Future<void> _uploadPdf() async {
    await _pdfUploadController.uploadPdf(courseDoc, courseDoc2);
  }
}
