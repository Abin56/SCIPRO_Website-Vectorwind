import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:scipro_website/data/video_management/category_model.dart';
import 'package:scipro_website/data/video_management/course_model.dart';
import 'package:scipro_website/data/video_management/folder_model.dart';
import 'package:scipro_website/data/video_management/study_material_model.dart';
import 'package:scipro_website/data/video_management/video_model.dart';
import 'package:scipro_website/view/constant/const.dart';

class VideoManagementRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  //create category

  Future<void> createCategory({required CategoryModel categoryModel}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(categoryModel.id)
          .set(categoryModel.toMap());

      showToast(msg: 'Successfully created');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  //fetch all category

 Future<List<CategoryModel>> fetchAllCategory() async {
    try {
      final QuerySnapshot<Map<String, dynamic>> data =
          await _firestore.collection('recorded_course').get();
      return data.docs.map((e) => CategoryModel.fromMap(e.data())).toList();
    } on FirebaseException catch (e) {
      log(e.toString());
      return [];
    }
  }


Stream<List<CategoryModel>> fetchAllCategoriesStream() {
  StreamController<List<CategoryModel>> controller = StreamController();

  _firestore.collection('recorded_course').snapshots().listen(
    (QuerySnapshot<Map<String, dynamic>> snapshot) {
      List<CategoryModel> categories = snapshot.docs
          .map((e) => CategoryModel.fromMap(e.data()))
          .toList();
      controller.add(categories);
    },
    onError: (error) {
      log(error.toString());
      controller.addError(error.toString());
    },
  );

  return controller.stream;
}


  Future<void> createCourse({required CourseModel course}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(course.categoryId)
          .collection('course')
          .doc(course.id)
          .set(course.toMap());
      showToast(msg: 'Successfully created');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  Future<List<CourseModel>> fetchAllCourses(
      {required String categoryId}) async {
    try {
      final data = await _firestore
          .collection('recorded_course')
          .doc(categoryId)
          .collection('course')
          .get();

      final mappedData =
          data.docs.map((e) => CourseModel.fromMap(e.data())).toList();
      return mappedData;
    } on FirebaseException catch (e) {
      log(e.toString());
      return [];
    }
  }

  Future<void> createFolder({required FolderModel folderModel}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(folderModel.categoryId)
          .collection('course')
          .doc(folderModel.courseId)
          .collection('folders')
          .doc(folderModel.id)
          .set(folderModel.toMap());
      showToast(msg: 'Successfully created');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  Future<List<FolderModel>> fetchAllFolders(
      {required String categoryId, required String courseId}) async {
    try {
      final data = await _firestore
          .collection('recorded_course')
          .doc(categoryId)
          .collection('course')
          .doc(courseId)
          .collection('folders')
          .get();

      final mappedData =
          data.docs.map((e) => FolderModel.fromMap(e.data())).toList();
      return mappedData;
    } on FirebaseException catch (e) {
      log(e.toString());
      return [];
    }
  }

  Future<List<VideoModel>> fetchAllVideos(
      {required String categoryId,
      required String courseId,
      required String folderId}) async {
    try {
      final data = await _firestore
          .collection('recorded_course')
          .doc(categoryId)
          .collection('course')
          .doc(courseId)
          .collection('folders')
          .doc(folderId)
          .collection('videos')
          .get();

      final mappedData =
          data.docs.map((e) => VideoModel.fromMap(e.data())).toList();
      return mappedData;
    } on FirebaseException catch (e) {
      log(e.toString());
      return [];
    }
  }

  Future<List<StudyMaterial>> fetchAllStudyMaterials(
      {required String categoryId,
      required String courseId,
      required String folderId}) async {
    try {
      final data = await _firestore
          .collection('recorded_course')
          .doc(categoryId)
          .collection('course')
          .doc(courseId)
          .collection('folders')
          .doc(folderId)
          .collection('studyMaterial')
          .get();

      final mappedData =
          data.docs.map((e) => StudyMaterial.fromMap(e.data())).toList();
      return mappedData;
    } on FirebaseException catch (e) {
      log(e.toString());
      return [];
    }
  }

  Future<void> uploadVideoToFirebase({required VideoModel videoModel}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(videoModel.categoryId)
          .collection('course')
          .doc(videoModel.courseId)
          .collection('folders')
          .doc(videoModel.folderId)
          .collection('videos')
          .doc(videoModel.id)
          .set(videoModel.toMap());
      showToast(msg: 'Successfully created');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  Future<void> uploadStudyMaterialToFirebase(
      {required StudyMaterial studyMaterial}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(studyMaterial.categoryId)
          .collection('course')
          .doc(studyMaterial.courseId)
          .collection('folders')
          .doc(studyMaterial.folderId)
          .collection('studyMaterial')
          .doc(studyMaterial.id)
          .set(studyMaterial.toMap());
      showToast(msg: 'Successfully created');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  Future<void> updateVideo({required VideoModel videoModel}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(videoModel.categoryId)
          .collection('course')
          .doc(videoModel.courseId)
          .collection('folders')
          .doc(videoModel.folderId)
          .collection('videos')
          .doc(videoModel.id)
          .update(videoModel.toMap());
      showToast(msg: 'Successfully Updated');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  Future<void> updateStudyMaterial(
      {required StudyMaterial studyMaterial}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(studyMaterial.categoryId)
          .collection('course')
          .doc(studyMaterial.courseId)
          .collection('folders')
          .doc(studyMaterial.folderId)
          .collection('studyMaterial')
          .doc(studyMaterial.id)
          .update(studyMaterial.toMap());
      showToast(msg: 'Successfully Updated');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  Future<void> updateFolder({required FolderModel folderModel}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(folderModel.categoryId)
          .collection('course')
          .doc(folderModel.courseId)
          .collection('folders')
          .doc(folderModel.id)
          .update(folderModel.toMap());
      showToast(msg: 'Successfully Updated');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  Future<void> updateCourse({required CourseModel courseModel}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(courseModel.categoryId)
          .collection('course')
          .doc(courseModel.id)
          .update(courseModel.toMap());
      showToast(msg: 'Successfully Updated');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  Future<void> updateCategory({required CategoryModel categoryModel}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(categoryModel.id)
          .update(categoryModel.toMap());
      showToast(msg: 'Successfully Updated');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  Future<void> deleteVideo({required VideoModel videoModel}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(videoModel.categoryId)
          .collection('course')
          .doc(videoModel.courseId)
          .collection('folders')
          .doc(videoModel.folderId)
          .collection('videos')
          .doc(videoModel.id)
          .delete();

      await _storage.refFromURL(videoModel.thumbnailUrl).delete();
      await _storage.refFromURL(videoModel.videoUrl).delete();
      showToast(msg: 'Successfully Deleted');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  Future<void> deleteFolder({required FolderModel folderModel}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(folderModel.categoryId)
          .collection('course')
          .doc(folderModel.courseId)
          .collection('folders')
          .doc(folderModel.id)
          .delete();
      showToast(msg: 'Successfully Deleted');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  Future<void> deleteCourse({required CourseModel courseModel}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(courseModel.categoryId)
          .collection('course')
          .doc(courseModel.id)
          .delete();
      showToast(msg: 'Successfully Deleted');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  Future<void> deleteCategory({required CategoryModel categoryModel}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(categoryModel.id)
          .delete();
      showToast(msg: 'Successfully Deleted');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }

  Future<void> deleteStudyMaterial(
      {required StudyMaterial studyMaterial}) async {
    try {
      await _firestore
          .collection('recorded_course')
          .doc(studyMaterial.categoryId)
          .collection('course')
          .doc(studyMaterial.courseId)
          .collection('folders')
          .doc(studyMaterial.folderId)
          .collection('studyMaterial')
          .doc(studyMaterial.id)
          .delete();

      await _storage.refFromURL(studyMaterial.pdfUrl).delete();
      showToast(msg: 'Successfully Deleted');
    } on FirebaseException catch (e) {
      showToast(msg: 'Something went wrong');
      log(e.toString());
    }
  }
}
