import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scipro_website/data/video_management/category_data.dart';
import 'package:scipro_website/repository/core/firestore_helpers.dart';

class CategoryRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<bool> checkCategoryExist({required CategoryData categoryData}) async {
    try {
      final categoryCollection = await _firestore.courseCategoryDocument();
      final isDocExist = await categoryCollection
          .where(
            'categoryName',
            isEqualTo: categoryData.categoryName.toLowerCase(),
          )
          .get();

      if (isDocExist.docs.isEmpty) {
        return false;
      } else {
        return true;
      }
    } on FirebaseException catch (e) {
      log(e.toString(), name: 'CategoryRepositoryImpl - checkCategoryExist');
      return false;
    }
  }

  Future<void> createCategory({required CategoryData categoryData}) async {
    try {
      final categoryCollection = await _firestore.courseCategoryDocument();
      await categoryCollection.doc(categoryData.id).set(categoryData.toMap());
    } on FirebaseException catch (e) {
      log(e.toString(), name: 'CategoryRepositoryImpl - createCategory');
    }
  }

  Future<void> updateCategory({required CategoryData categoryData}) async {
    try {
      final categoryCollection = await _firestore.courseCategoryDocument();
      await categoryCollection
          .doc(categoryData.id)
          .update(categoryData.toMap());
    } on FirebaseException catch (e) {
      log(e.toString(), name: 'CategoryRepositoryImpl - updateCategory');
    }
  }

  Future<List<CategoryData>> fetchAllCategory() async {
    try {
      final categoryCollection = await _firestore.courseCategoryDocument();
      final cateogories = await categoryCollection.get();
      final List<CategoryData> allCategories = cateogories.docs
          .map((e) => CategoryData.fromMap(e.data() as Map<String, dynamic>))
          .toList();
      return allCategories;
    } on FirebaseException catch (e) {
      log(e.toString(), name: 'CategoryRepositoryImpl - fetchAllCategory');
      return [];
    }
  }
}
