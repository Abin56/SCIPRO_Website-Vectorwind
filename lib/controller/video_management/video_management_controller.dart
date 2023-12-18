import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/data/video_management/category_model.dart';
import 'package:scipro_website/data/video_management/course_model.dart';
import 'package:scipro_website/data/video_management/folder_model.dart';
import 'package:scipro_website/repository/video_management/video_management_repository.dart';
import 'package:uuid/uuid.dart';

import '../../data/video_management/video_model.dart';
import '../../utils/utils.dart';

class VideoMangementController {
  final VideoManagementRepository _repository = VideoManagementRepository();
  final Uuid uuid = const Uuid();

  TextEditingController courseNameTextController = TextEditingController();
  TextEditingController faculteNameTextController = TextEditingController();
  TextEditingController courseFeeTextController = TextEditingController();
  TextEditingController durationTextController = TextEditingController();

  Rx<CategoryModel> selectedCategory =
      Rx(CategoryModel(id: '', name: 'SelectCategory', position: 0));
  CourseModel?
      selectedCourse; // double click then store that data to selected course
  FolderModel? selectedFolder;

  Rxn<PlatformFile> image = Rxn();
  Rxn<PlatformFile> video = Rxn();
  RxDouble progress = RxDouble(0.0);

  //fetchedData
  RxList<CategoryModel> fetchedCategory = RxList();
  RxList<CourseModel> fetchedCourse = RxList();
  RxList<FolderModel> foldersList = RxList();
  RxList<VideoModel> vidoesList = RxList();

//loading
  RxBool isLoadingCategory = RxBool(false);
  RxBool isLoadingCourse = RxBool(false);
  RxBool isLoadingFolder = RxBool(false);
  RxBool isVideoUploading = RxBool(false);

  //category

  Future<void> createCategory({required categoryName}) async {
    isLoadingCategory.value = true;
    await _repository.createCategory(
        categoryModel: CategoryModel(
      id: uuid.v1(),
      name: categoryName,
      position: 0,
    ));
    fetchAllCategory();
    isLoadingCategory.value = false;
  }

  Future<List<CategoryModel>> fetchAllCategory() async {
    isLoadingCategory.value = true;
    final data = await _repository.fetchAllCategory();
    fetchedCategory.value = data;
    fetchedCategory.sort((a, b) => a.position.compareTo(b.position));
    fetchedCategory.refresh();
    isLoadingCategory.value = false;
    return fetchedCategory;
  }

  Future<void> updateCategoryFromFirebase({
    required CategoryModel categoryModel,
  }) async {
    isLoadingCategory.value = true;

    await _repository.updateCategory(categoryModel: categoryModel);

    await fetchAllCategory();

    isLoadingCategory.value = false;
  }

  Future<void> deleteCategoryFromFirebase({
    required CategoryModel cagtegoryModel,
  }) async {
    isLoadingCategory.value = true;
    await _repository.deleteCategory(
      categoryModel: cagtegoryModel,
    );
    await fetchAllCategory();
    if (cagtegoryModel == selectedCategory.value) {
      fetchedCourse.clear();
      fetchedCourse.refresh();
      selectedCategory.value =
          CategoryModel(id: '', name: 'SelectCategory', position: 0);
      isLoadingCategory.value = false;
      return;
    }

    isLoadingCategory.value = false;
  }

  //------------------------------------------------------------------------

  //course

  Future<void> createCourse() async {
    if (selectedCategory.value.id.isNotEmpty) {
      isLoadingCourse.value = true;
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
      await fetchAllCourse();
      clearControllers();
      isLoadingCourse.value = false;
    }
  }

  Future<List<CourseModel>> fetchAllCourse() async {
    if (selectedCategory.value.id.isNotEmpty) {
      isLoadingCourse.value = true;
      final data = await _repository.fetchAllCourses(
          categoryId: selectedCategory.value.id);

      fetchedCourse.value = data;
      fetchedCourse.sort((a, b) => a.position.compareTo(b.position));
      fetchedCourse.refresh();
      isLoadingCourse.value = false;
      return fetchedCourse;
    }

    return [];
  }

  Future<void> updateCourseFromFirebase({
    required CourseModel courseModel,
  }) async {
    if (selectedCategory.value.id.isNotEmpty) {
      isLoadingCourse.value = true;
      await _repository.updateCourse(courseModel: courseModel);
      await fetchAllCourse();
      isLoadingCourse.value = false;
    }
  }

  Future<void> deleteCourseFromFirebase({
    required CourseModel courseModel,
  }) async {
    if (selectedCategory.value.id.isNotEmpty) {
      isLoadingCourse.value = true;
      await _repository.deleteCourse(
        courseModel: courseModel,
      );
      await fetchAllCourse();

      isLoadingCourse.value = false;
    }
  }
//------------------------------------------------------------------------------
  //folder

  Future<void> createFolder(
      {required String folderName, required String position}) async {
    if (selectedCourse != null && selectedCategory.value.id.isNotEmpty) {
      isLoadingFolder.value = true;
      final folderModel = FolderModel(
        id: uuid.v1(),
        folderName: folderName,
        categoryId: selectedCategory.value.id,
        courseId: selectedCourse?.id ?? '',
        position: position,
      );
      await _repository.createFolder(folderModel: folderModel);
      await fetchAllFolders();
      isLoadingFolder.value = false;
    }
  }

  Future<List<FolderModel>> fetchAllFolders() async {
    if (selectedCategory.value.id.isNotEmpty && selectedCourse != null) {
      isLoadingFolder.value = true;
      final data = await _repository.fetchAllFolders(
        categoryId: selectedCategory.value.id,
        courseId: selectedCourse?.id ?? '',
      );

      foldersList.value = data;
      foldersList.sort((a, b) => a.position.compareTo(b.position));
      foldersList.refresh();
      isLoadingFolder.value = false;
      return foldersList;
    }

    return [];
  }

  Future<void> updateFolderFromFirebase({
    required FolderModel folderModel,
  }) async {
    if (selectedCourse != null && selectedCategory.value.id.isNotEmpty) {
      isLoadingFolder.value = true;
      await _repository.updateFolder(folderModel: folderModel);
    }
    await fetchAllFolders();

    isLoadingFolder.value = false;
  }

  Future<void> deleteFolderFromFirebase({
    required FolderModel folderModel,
  }) async {
    if (selectedFolder != null && selectedCategory.value.id.isNotEmpty) {
      isLoadingFolder.value = true;
      await _repository.deleteFolder(
        folderModel: folderModel,
      );
      await fetchAllFolders();

      isLoadingFolder.value = false;
    }
  }

  //video

  Future<List<VideoModel>> fetchVideos() async {
    if (selectedCategory.value.id.isNotEmpty &&
        selectedCourse != null &&
        selectedFolder != null) {
      isVideoUploading.value = true;
      final data = await _repository.fetchAllVideos(
          categoryId: selectedCategory.value.id,
          courseId: selectedCourse?.id ?? '',
          folderId: selectedFolder?.id ?? '');
      isVideoUploading.value = false;
      vidoesList.value = data;
      vidoesList.sort((a, b) => a.position.compareTo(b.position));
      vidoesList.refresh();
      isVideoUploading.value = false;
      return vidoesList;
    }

    return [];
  }

  Future<void> uploadVideoToFirebase({
    required String videoName,
    required String position,
  }) async {
    if (selectedCourse != null &&
        selectedFolder != null &&
        selectedCategory.value.id.isNotEmpty &&
        image.value != null &&
        video.value != null &&
        video.value?.bytes != null &&
        image.value?.bytes != null) {
      isVideoUploading.value = true;

      final String thumbnailUrl = await uploadUint8ListToFirestore(
          image.value!.bytes!, 'thumbnail', uuid.v1());
      final String videoUrl = await uploadUint8ListToFirestore(
          video.value!.bytes!, 'videos', videoName);

      final videoModel = VideoModel(
        id: uuid.v1(),
        videoUrl: videoUrl,
        position: position,
        videoName: videoName,
        thumbnailUrl: thumbnailUrl,
        categoryId: selectedFolder?.categoryId ?? '',
        courseId: selectedFolder?.courseId ?? '',
        folderId: selectedFolder?.id ?? '',
      );
      await _repository.uploadVideoToFirebase(
        videoModel: videoModel,
      );
      await fetchVideos();
      image.value = null;
      video.value = null;
      isVideoUploading.value = false;
    }
  }

  Future<void> updateVideoFromFirebase({
    required VideoModel videoModel,
  }) async {
    if (selectedCourse != null &&
        selectedFolder != null &&
        selectedCategory.value.id.isNotEmpty) {
      isVideoUploading.value = true;
      await _repository.updateVideo(
        videoModel: videoModel,
      );
      await fetchVideos();

      isVideoUploading.value = false;
    }
  }

  Future<void> deleteVideoFromFirebase({
    required VideoModel videoModel,
  }) async {
    if (selectedCourse != null &&
        selectedFolder != null &&
        selectedCategory.value.id.isNotEmpty) {
      isVideoUploading.value = true;
      await _repository.deleteVideo(
        videoModel: videoModel,
      );
      await fetchVideos();

      isVideoUploading.value = false;
    }
  }

  void clearControllers() {
    courseNameTextController.clear();
    faculteNameTextController.clear();
    courseFeeTextController.clear();
    durationTextController.clear();
  }
}
