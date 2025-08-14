import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/buttons/icon_button.dart';
import 'package:wearit/components/widgets/buttons/icon_button_with_badge.dart';
import 'package:wearit/components/widgets/containers/curved_clip_path.dart';
import 'package:wearit/components/widgets/images/image_slide.dart';
import 'package:wearit/features/store/screens/product_details/product_meta_data.dart';
import 'package:wearit/features/store/screens/product_details/widgets/product_image_slider.dart';
import 'package:wearit/features/store/screens/product_details/widgets/rating_share.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    return Scaffold(
      // bottomNavigationBar: ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TProductImageSlider(),

            Padding(
              padding: TSpacingStyle.paddingDefault,
              child: Column(
                children: [
                  TRatingAndShare(),
                  TProductMetaData(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

