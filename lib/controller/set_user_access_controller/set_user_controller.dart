import 'package:get/get.dart';
import 'package:scipro_website/data/video_management/category_model.dart';
import 'package:scipro_website/data/video_management/course_model.dart';
import 'package:scipro_website/view/core/core.dart';

class SetUserAccessController extends GetxController {
  RxBool recCatisLoading = false.obs;
  RxString recCatID = ''.obs;
  List<CategoryModel> categoryModel = [];
  List<CourseModel> courseModel = [];

  Future<List<CategoryModel>> fetchRecCategory() async {
    final firebase = await dataserver.collection('recorded_course').get();

    for (var i = 0; i < firebase.docs.length; i++) {
      final list =
          firebase.docs.map((e) => CategoryModel.fromMap(e.data())).toList();
      categoryModel.add(list[i]);
    }
    recCatisLoading.value = false;
    return categoryModel;
  }

  Future<List<CourseModel>> fetchRecCourses() async {
    final firebase = await dataserver
        .collection('recorded_course')
        .doc(recCatID.value)
        .collection("course")
        .get();

    for (var i = 0; i < firebase.docs.length; i++) {
      final list =
          firebase.docs.map((e) => CourseModel.fromMap(e.data())).toList();
      courseModel.add(list[i]);
    }

    return courseModel;
  }
}
