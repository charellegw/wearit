import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/products/cart/cart_item.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TCartExpandable extends StatelessWidget {
  const TCartExpandable({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'brand': 'New Balance',
        'name': 'New Balance 530',
        'price': 119.0,
        'variant': 'Navy - 38.5',
        'image': TImages.product1,
        'quantity': 1,
      },
      {
        'brand': 'Nike',
        'name': 'Nike Air Max 270',
        'price': 150.3,
        'variant': 'Black - 42',
        'image': TImages.product1,
        'quantity': 2,
      },
      {
        'brand': 'Adidas',
        'name': 'Adidas Samba',
        'price': 100.7,
        'variant': 'White - 40',
        'image': TImages.product1,
        'quantity': 1,
      },
    ];

    return ExpansionTile(
      title: TCartItem(
        productName: products[0]['name'] as String,
        imagePath: products[0]['image'] as String,
        brandName: products[0]['brand'] as String,
        productVariant: products[0]['variant'] as String,
        productPrice: products[0]['price'] as double,
        productQuantity: products[0]['quantity'] as int,
      ),

      tilePadding: EdgeInsets.zero,
      childrenPadding: const EdgeInsets.symmetric(vertical: 0),
      expandedAlignment: Alignment.topLeft,
      shape: const RoundedRectangleBorder(side: BorderSide.none),
      collapsedShape: const RoundedRectangleBorder(side: BorderSide.none),

      children: products.skip(1).map((p) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.defaultGap / 2),
          child: TCartItem(
            productName: p['name'] as String,
            imagePath: p['image'] as String,
            brandName: p['brand'] as String,
            productVariant: p['variant'] as String,
            productPrice: p['price'] as double,
            productQuantity: p['quantity'] as int,
          ),
        );
      }).toList(),
    );
  }
}
