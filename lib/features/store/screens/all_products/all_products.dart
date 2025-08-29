import 'package:flutter/material.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/layouts/grid_layout.dart';
import 'package:wearit/components/widgets/products/product_cards/product_vertical_card.dart';
import 'package:wearit/features/store/screens/all_products/widgets/filter_sort_dropdown.dart';
import 'package:wearit/utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        backButtonVisibility: true,
        title: Text( title, style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600), ),
      ),
      body: Padding(
        padding: TSpacingStyle.paddingDefault,
        child: Column(
          children: [
            TFilterSortDropdown(),
            const SizedBox(height: TSizes.sectionGap,),

            TGridLayout(
              itemCount: 4,
              itemBuilder: (_, index) => const TProductVerticalCard()
            ),
          ],
        ),
      ),
    );
  }
}

