import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scipro_website/repository/core/firestore_helpers.dart';

import '../../data/video_management/recorded_course_data.dart';

class RecordedCourseRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createCourse({required RecordedCourses courses}) async {
    try {
      final courseCollection = await _firestore.recordedCourseDocument();
      await courseCollection
          .doc(courses.categoryId)
          .collection(courses.categoryId)
          .doc(courses.id)
          .set(courses.toMap());
    } on FirebaseException catch (e) {
      log(e.toString(), name: 'RecordedCourseRepository - createCourse');
    }
  }
}
