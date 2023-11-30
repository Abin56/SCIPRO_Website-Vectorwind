import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/data/video_management/category_data.dart';
import 'package:uuid/uuid.dart';

import '../../data/video_management/recorded_course_data.dart';
import '../../repository/video_management/recorded_course_repository.dart';

class RecordedCourseController extends GetxController {
  final RecordedCourseRepository repository = RecordedCourseRepository();
  final TextEditingController courseNameController = TextEditingController();
  final TextEditingController facultieController = TextEditingController();
  final TextEditingController coursFeeController = TextEditingController();
  final TextEditingController durationController = TextEditingController();
  final TextEditingController courseIdController = TextEditingController();
  final TextEditingController postedDateController = TextEditingController();
  final TextEditingController postedTimeController = TextEditingController();
  CategoryData selectedCategory =
      CategoryData(categoryName: 'Category Name', id: '');
  final Uuid uid = const Uuid();
  RxBool isLoading = RxBool(false);
  List<RecordedCoursesData> allCourses = [];

  void changeIsLoading(bool value) {
    isLoading.value = value;
  }

  Future<void> createCategory() async {
    changeIsLoading(true);
    RecordedCoursesData recordedCourses = RecordedCoursesData(
      id: uid.v1(),
      courseName: courseNameController.text,
      facultie: facultieController.text,
      courseId: courseIdController.text,
      categoryId: selectedCategory.id,
      courseFee: num.tryParse(coursFeeController.text) ?? -1,
      duration: num.tryParse(durationController.text) ?? -1,
      postedDate: int.tryParse(postedDateController.text) ?? -1,
      postedTime: int.tryParse(postedTimeController.text) ?? -1,
      videos: [],
      subscribedStudents: [],
    );
    await repository.createCourse(courses: recordedCourses);
    clearAllfields();
    changeIsLoading(false);
  }

  Future<void> fetchRecordedCourse(String categoryId) async {
    changeIsLoading(true);
    allCourses = await repository.fetchRecordedCourses(categoryId);
    changeIsLoading(false);
  }

  void clearAllfields() {
    courseNameController.clear();
    facultieController.clear();
    coursFeeController.clear();
    durationController.clear();
    courseIdController.clear();
    postedDateController.clear();
    postedTimeController.clear();
    selectedCategory = CategoryData(categoryName: 'Category Name', id: '');
  }
}
