import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:scipro_website/data/video_management/category_model.dart';
import 'package:scipro_website/data/video_management/study_material_model.dart';
import 'package:uuid/uuid.dart';

import '../../data/video_management/course_model.dart';
import '../../data/video_management/folder_model.dart';
import '../../repository/video_management/video_management_repository.dart';
import '../../utils/utils.dart';

class StudyMaterialController extends GetxController {
  final VideoManagementRepository repository = VideoManagementRepository();
  RxBool isLoading = RxBool(false);
  RxBool isPdfUploading = RxBool(false);
  RxBool isStudyMaterialLoading = RxBool(false);
  RxList<CategoryModel> fetchedCategory = RxList();
  RxList<CourseModel> fetchedCourse = RxList();
  RxList<FolderModel> foldersList = RxList();
  RxList<StudyMaterial> studyMaterialList = RxList();
  Rxn<Uint8List> studyMaterial = Rxn();
  final Uuid uuid = const Uuid();
  Rx<CategoryModel> selectedCategory =
      Rx(CategoryModel(id: '', name: 'SelectCategory', position: 0));
  CourseModel? selectedCourse;
  FolderModel? selectedFolder;

  Future<List<CategoryModel>> fetchAllCategory() async {
    final data = await repository.fetchAllCategory();
    fetchedCategory.value = data;
    fetchedCategory.sort((a, b) => a.position.compareTo(b.position));
    fetchedCategory.refresh();
    return fetchedCategory;
  }

  Future<List<CourseModel>> fetchAllCourse() async {
    isLoading.value = true;
    if (selectedCategory.value.id.isNotEmpty) {
      final data = await repository.fetchAllCourses(
          categoryId: selectedCategory.value.id);

      fetchedCourse.value = data;
      fetchedCourse.sort((a, b) => a.position.compareTo(b.position));
      fetchedCourse.refresh();
      isLoading.value = false;
      return fetchedCourse;
    }

    isLoading.value = false;
    return [];
  }

  Future<List<FolderModel>> fetchAllFolders() async {
    if (selectedCategory.value.id.isNotEmpty && selectedCourse != null) {
      final data = await repository.fetchAllFolders(
        categoryId: selectedCategory.value.id,
        courseId: selectedCourse?.id ?? '',
      );
      isLoading.value = false;
      foldersList.value = data;
      foldersList.sort((a, b) => a.position.compareTo(b.position));
      foldersList.refresh();
      return foldersList;
    }

    return [];
  }

  Future<void> uploadStudyMaterialToFirebase({
    required String name,
    required String position,
  }) async {
    if (selectedCourse != null &&
        selectedFolder != null &&
        selectedCategory.value.id.isNotEmpty &&
        studyMaterial.value != null) {
      isPdfUploading.value = true;
      final String url = await uploadUint8ListToFirestore(
          studyMaterial.value!, 'studyMaterial', uuid.v1());

      final studyMaterialModel = StudyMaterial(
        id: uuid.v1(),
        pdfName: name,
        pdfUrl: url,
        position: position,
        categoryId: selectedFolder?.categoryId ?? '',
        courseId: selectedFolder?.courseId ?? '',
        folderId: selectedFolder?.id ?? '',
      );
      await repository.uploadStudyMaterialToFirebase(
        studyMaterial: studyMaterialModel,
      );

      await fetchAllStudyMaterials();

      studyMaterial.value = null;
      isPdfUploading.value = false;
    }
  }

  Future<List<StudyMaterial>> fetchAllStudyMaterials() async {
    if (selectedCategory.value.id.isNotEmpty && selectedCourse != null) {
      isStudyMaterialLoading.value = true;
      final data = await repository.fetchAllStudyMaterials(
          categoryId: selectedCategory.value.id,
          courseId: selectedCourse?.id ?? '',
          folderId: selectedFolder?.id ?? '');
      studyMaterialList.value = data;
      studyMaterialList.sort((a, b) => a.position.compareTo(b.position));
      studyMaterialList.refresh();
      isStudyMaterialLoading.value = false;
      return studyMaterialList;
    }

    return [];
  }

  Future<void> updateStudyMaterialFromFirebase({
    required StudyMaterial studyMaterial,
  }) async {
    if (selectedCourse != null &&
        selectedFolder != null &&
        selectedCategory.value.id.isNotEmpty) {
      isStudyMaterialLoading.value = true;
      await repository.updateStudyMaterial(
        studyMaterial: studyMaterial,
      );
    }
    await fetchAllStudyMaterials();
    isStudyMaterialLoading.value = false;
  }

  Future<void> deleteStudyMaterialFromFirebase({
    required StudyMaterial studyMaterial,
  }) async {
    isStudyMaterialLoading.value = true;

    if (selectedCourse != null &&
        selectedFolder != null &&
        selectedCategory.value.id.isNotEmpty) {
      await repository.deleteStudyMaterial(
        studyMaterial: studyMaterial,
      );
    }
    await fetchAllStudyMaterials();

    isStudyMaterialLoading.value = false;
  }
}
