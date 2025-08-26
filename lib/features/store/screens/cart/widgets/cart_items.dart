import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/products/cart/add_remove_button.dart';
import 'package:wearit/components/widgets/products/cart/cart_item.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showQuantityButtons = true,
  });

  final bool showQuantityButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.gridGap,),
      itemCount: 5,
      itemBuilder: (_, index) => Column(
        children: [
          TCartItem(),
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

