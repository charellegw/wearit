import 'package:flutter/material.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/products/product_filter_sort/product_filter_sort.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingDefault,
          child: TProductWithFilterSort(),
        ),
      ),
    );
  }
}

