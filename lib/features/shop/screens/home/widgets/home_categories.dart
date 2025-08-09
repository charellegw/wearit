import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/listview/category_item.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
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
            height: TSizes.sectionGap,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return TCategoryItem(
                  image: TImages.iBags,
                  title: 'Bag',
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
