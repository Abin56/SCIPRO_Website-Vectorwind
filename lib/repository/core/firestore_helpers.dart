import 'package:cloud_firestore/cloud_firestore.dart';

extension FireStoreX on FirebaseFirestore {
  Future<CollectionReference> recordedCourseDocument() async {
    return FirebaseFirestore.instance.collection('courses');
  }

  Future<CollectionReference> courseCategoryDocument() async {
    return FirebaseFirestore.instance.collection('courseCategories');
  }
}
