import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/products/cart/add_remove_button.dart';
import 'package:wearit/components/widgets/products/cart/cart_item.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';

/// A list view of cart items.
class TCartList extends StatelessWidget {
  const TCartList({
    super.key,
    this.showQuantityButtons = true, 
    this.showQuantityLabel = false,
  });

  final bool showQuantityButtons;
  final bool showQuantityLabel;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.gridGap,),
      itemCount: 5,
      itemBuilder: (_, index) => Column(
        children: [
          TCartItem(
            productName: 'New Balance 530',
            brandName: 'New Balance',
            imagePath: TImages.product1,
            productPrice: 119,
            productQuantity: 1,
            productVariant: 'Navy - 38.8',
            showQuantityLabel: showQuantityLabel,
          ),
          if (showQuantityButtons) ...[
            const SizedBox(height: TSizes.defaultGap,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TProductQuantityWIthAddRemoveButton(),
              ],
            ),
          ]
        ],
      ),
    );
  }
}

