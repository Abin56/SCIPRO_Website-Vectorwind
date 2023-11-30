import 'package:get/get.dart';
import 'package:scipro_website/repository/video_management/category_repository.dart';
import 'package:uuid/uuid.dart';

import '../../data/video_management/category_data.dart';

class CategoryController extends GetxController {
  final CategoryRepository repository = CategoryRepository();
  final Uuid uid = const Uuid();
  RxBool isLoading = RxBool(false);

  void changeIsLoading(bool value) {
    isLoading.value = value;
  }

  Future<void> createCategory({required CategoryData categoryData}) async {
    changeIsLoading(true);
    if (!await repository.checkCategoryExist(categoryData: categoryData)) {
      final newCategoryData = categoryData.copyWith(id: uid.v1());
      await repository.createCategory(categoryData: newCategoryData);
      changeIsLoading(false);
    } else {
      //show Toast
      changeIsLoading(false);
    }
    changeIsLoading(false);
  }

  Future<void> updateCategory({required CategoryData categoryData}) async {
    changeIsLoading(true);
    if (await repository.checkCategoryExist(categoryData: categoryData)) {
      await repository.updateCategory(categoryData: categoryData);
      changeIsLoading(false);
    } else {
      //show Toast
      changeIsLoading(false);
    }
  }

  Future<List<CategoryData>> fetchAllCategory() async {
    changeIsLoading(true);
    final allCategory = await repository.fetchAllCategory();
    changeIsLoading(false);
    return allCategory;
  }
}
