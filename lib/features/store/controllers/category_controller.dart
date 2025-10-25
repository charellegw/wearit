import 'package:get/get.dart';
import 'package:wearit/data/repositories/categories/category_repository.dart';
import 'package:wearit/features/store/models/category_model.dart';
import 'package:wearit/utils/constants/dummy_data.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/popups/full_screen_loader.dart';
import 'package:wearit/utils/popups/loaders.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final isLoading = false.obs;
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;
  final _categoryRepository = Get.put(CategoryRepository());

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  Future<void> fetchCategories() async {
    try {
      // Start Load
      isLoading.value = true;

      // Fetch Categories
      final categories = await _categoryRepository.getAllCategories();

      // Update Category List
      allCategories.assignAll(categories);

      // Featured Category Filter
      featuredCategories.assignAll(
        categories.where((category) => 
          category.isFeatured && (category.parentId.isEmpty)
        ).toList(),
      );
    } catch (e) {
      // Displaying generic error to user.
        TLoaders.errorSnackBar(title: 'Oh no!', message: e.toString());
    } finally {
      // Stop loader  
      isLoading.value = false;
    }
  }

  Future<void> loadCategoryData() async {
    try {
      TFullScreenLoader.openLoadingDialog("Loading data...", TImages.docerAnimation);
      await _categoryRepository.uploadCategoryImage(TDummyData.categories);
      TLoaders.successSnackBar(title: 'Load Data Success!', message: "Data is successfully loaded.");
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh no!', message: e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }
}