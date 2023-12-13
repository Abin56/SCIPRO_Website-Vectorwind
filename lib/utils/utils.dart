import 'dart:async';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/video_management/video_management_controller.dart';

Future<Uint8List?> imagePicker() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['jpg', 'png'],
  );

  if (result != null) {
    Uint8List? fileBytes = result.files.first.bytes;
    return fileBytes;

    // Upload file
  }

  return null;
}

Future<Uint8List?> videoPicker() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['webm', 'mkv', 'mp4'],
  );

  if (result != null) {
    Uint8List? fileBytes = result.files.first.bytes;
    return fileBytes;

    // Upload file
  }

  return null;
}

Future<String> uploadUint8ListToFirestore(
  Uint8List data,
  String documentPath,
  String name,
) async {
  try {
    StreamSubscription<TaskSnapshot>? streamSubscription;
    final storageReference =
        FirebaseStorage.instance.ref().child('$documentPath/$name');
    final uploadTask = storageReference.putData(data);
    streamSubscription = uploadTask.snapshotEvents.listen(
      (TaskSnapshot snapshot) {
        Get.find<VideoMangementController>().progress.value =
            (snapshot.bytesTransferred / snapshot.totalBytes) * 100;

        print((snapshot.bytesTransferred / snapshot.totalBytes) * 100);
      },
      onDone: () {
        streamSubscription?.cancel();
      },
      onError: (Object e) {
        streamSubscription?.cancel();
      },
    );

    final task = await uploadTask;
    String url = await task.ref.getDownloadURL();
    return url;
  } catch (e) {
    return '';
  }
}
