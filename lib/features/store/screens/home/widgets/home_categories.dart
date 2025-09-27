import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/listview/category_item.dart';
import 'package:wearit/components/widgets/shimmers/category_shimmer.dart';
import 'package:wearit/features/store/controllers/category_controller.dart';
import 'package:wearit/features/store/screens/sub_category/sub_category.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    final categoryController = Get.put(CategoryController());

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: TSizes.horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TSectionHeader(
            title: 'Fashion Categories',
            titleColor: darkMode ? Colors.black : Colors.white,
          ),
          const SizedBox(
            height: TSizes.defaultGap,
          ),
          Obx(
            () {
              if (categoryController.isLoading.value) {
                return const TCategoryShimmer(itemCount: 8);
              }

              if (categoryController.featuredCategories.isEmpty) {
                return Center(
                  child: Text('No data found!', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: darkMode ? Colors.white : Colors.black),),
                );
              }
              return SizedBox(
                height: 80,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: categoryController.featuredCategories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    final category = categoryController.featuredCategories[index];
                    return TCategoryItem(
                      image: category.imageURL,
                      title: category.name,
                      onTap: () => Get.to(() => const SubCategoryScreen()),
                    );
                  },
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}
