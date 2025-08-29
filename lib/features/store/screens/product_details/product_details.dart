import 'package:flutter/material.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/features/store/screens/product_details/product_meta_data.dart';
import 'package:wearit/features/store/screens/product_details/widgets/product_image_slider.dart';
import 'package:wearit/features/store/screens/product_details/widgets/rating_share.dart';
// import 'package:wearit/utils/helpers/helper.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final darkMode = THelper.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        backButtonVisibility: true,
        title: Text( 'My Addresses', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600), ),
      ),
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
      // bottomNavigationBar: ,
    );
  }
}

