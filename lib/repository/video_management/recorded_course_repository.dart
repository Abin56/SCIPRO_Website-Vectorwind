import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scipro_website/data/video_management/category_data.dart';
import 'package:scipro_website/repository/core/firestore_helpers.dart';

import '../../data/video_management/recorded_course_data.dart';

class RecordedCourseRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createCourse({required RecordedCoursesData courses}) async {
    try {
      final courseCollection = await _firestore.recordedCourseDocument();
      await courseCollection
          .doc(courses.categoryId)
          .set({'id': courses.categoryId});
      await courseCollection
          .doc(courses.categoryId)
          .collection(courses.categoryId)
          .doc(courses.id)
          .set(courses.toMap());
    } on FirebaseException catch (e) {
      log(e.toString(), name: 'RecordedCourseRepository - createCourse');
    }
  }

  Future<List<RecordedCoursesData>> fetchRecordedCourses(
      String categoryId) async {
    try {
      final categoryData = await _firestore.recordedCourseDocument();

      final cIds =
          await categoryData.doc(categoryId).collection(categoryId).get();

      return cIds.docs
          .map((e) => RecordedCoursesData.fromMap(e.data()))
          .toList();
    } on FirebaseException catch (e) {
      log(e.toString(),
          name: 'RecordedCourseRepository - fetchAllRecordedCourses');
      return [];
    }
  }

  Future<CategoryData> fetchCategoryDataDetails(String categoryId) async {
    try {
      final categoryData = await _firestore.courseCategoryDocument();

      final DocumentSnapshot<Map<String, dynamic>> cIds = await categoryData
          .doc(categoryId)
          .get() as DocumentSnapshot<Map<String, dynamic>>;

      return CategoryData(
          categoryName: cIds.data()?['categoryName'], id: cIds.data()?['id']);
    } on FirebaseException catch (e) {
      log(e.toString(), name: 'RecordedCourseRepository - fetchCategoryData');
      return CategoryData(categoryName: '', id: '');
    }
  }
}
