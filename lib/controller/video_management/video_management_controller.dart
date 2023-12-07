import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/data/video_management/category_model.dart';
import 'package:scipro_website/data/video_management/course_model.dart';
import 'package:scipro_website/data/video_management/folder_model.dart';
import 'package:scipro_website/repository/video_management/video_management_repository.dart';
import 'package:uuid/uuid.dart';

import '../../view/admin_panel/video_management/video_courses_list/table_grids/view_courses_grid.dart';

class VideoMangementController {
  final VideoManagementRepository _repository = VideoManagementRepository();
  final Uuid uuid = const Uuid();

  Rxn<CourseDataSource> courseDataSource = Rxn();

  TextEditingController courseNameTextController = TextEditingController();
  TextEditingController faculteNameTextController = TextEditingController();
  TextEditingController courseFeeTextController = TextEditingController();
  TextEditingController durationTextController = TextEditingController();

  Rx<CategoryModel> selectedCategory = Rx<CategoryModel>(
      CategoryModel(id: '', name: 'Select Category', position: 0));

  CourseModel?
      selectedCourse; // double click then store that data to selected course
  RxBool isLoading = RxBool(false);
  RxBool isLoadingFolder = RxBool(false);

  void updateLoading({required value}) {
    isLoading.value = value;
  }

  Future<void> createCategory({required categoryName}) async {
    updateLoading(value: true);
    await _repository.createCategory(
        categoryModel: CategoryModel(
      id: uuid.v1(),
      name: categoryName,
      position: 0,
    ));
    updateLoading(value: false);
  }

  Future<List<CategoryModel>> fetchAllCategory() async {
    final data = await _repository.fetchAllCategory();
    return data;
  }

  Future<void> createCourse() async {
    updateLoading(value: true);
    await _repository.createCourse(
      course: CourseModel(
          id: uuid.v1(),
          courseName: courseNameTextController.text,
          facultyName: faculteNameTextController.text,
          categoryId: selectedCategory.value.id,
          courseFee: double.tryParse(courseFeeTextController.text) ?? 0,
          createdDate: Timestamp.now().millisecondsSinceEpoch,
          position: 0,
          duration: int.tryParse(durationTextController.text) ?? 0),
    );
    clearControllers();
    updateLoading(value: false);
  }

  Future<List<CourseModel>> fetchAllCourse() async {
    updateLoading(value: true);
    if (selectedCategory.value.id.isNotEmpty) {
      final data = await _repository.fetchAllCourses(
          categoryId: selectedCategory.value.id);
      updateLoading(value: false);
      return data;
    }

    updateLoading(value: false);
    return [];
  }

  Future<void> createFolder(
      {required String folderName, required String position}) async {
    isLoadingFolder.value = true;
    if (selectedCourse != null) {
      final folderModel = FolderModel(
        id: uuid.v1(),
        folderName: folderName,
        categoryId: selectedCategory.value.id,
        courseId: selectedCourse?.categoryId ?? '',
        position: position,
      );
      await _repository.createFolder(folderModel: folderModel);
    }

    isLoadingFolder.value = false;
  }

  Future<List<FolderModel>> fetchAllFolders() async {
    updateLoading(value: true);
    if (selectedCategory.value.id.isNotEmpty && selectedCourse != null) {
      final data = await _repository.fetchAllFolders(
        categoryId: selectedCategory.value.id,
        courseId: selectedCourse?.id ?? '',
      );
      updateLoading(value: false);
      return data;
    }

    updateLoading(value: false);
    return [];
  }

  void clearControllers() {
    courseNameTextController.clear();
    faculteNameTextController.clear();
    courseFeeTextController.clear();
    durationTextController.clear();
    selectedCategory.value =
        CategoryModel(id: '', name: 'Select Category', position: 0);
  }
}
