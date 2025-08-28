import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/brands/brand_text.dart';
import 'package:wearit/components/widgets/buttons/icon_button.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/components/widgets/products/cart/cart_expandable.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TOrderItem extends StatelessWidget {
  const TOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.defaultGap),
      borderVisibility: true,
      borderColor: TColors.borderSecondary.withAlpha(120),
      child: Column(
        children: [
          /// Seller Brand Name & Order Status
          Row(
            children: [
              Expanded(child: TBrandName(brandName: 'New Balance', isSmallText: false,)),
              const SizedBox(width: TSizes.defaultGap,),
              Text('Processing', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: TColors.primaryColor)),
            ],
          ),
          const SizedBox(height: TSizes.defaultGap,),

          /// Product List
          TCartExpandable(),

          /// Order ID
          Row(
            children: [
              Icon(Iconsax.tag),
              SizedBox(width: TSizes.defaultGap,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Order', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textSecondary)),
                    Text('[#8923f4]', style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
              ),
              TIconButton(icon: Iconsax.copy, backgroundColor: THelper.isDarkMode(context) ? TColors.containerDark : TColors.containerLight,),
            ],
          ),

          const SizedBox(height: TSizes.defaultGap,),

          /// Order Date
          Row(
            children: [
              /// Arrival Date
              Expanded(
                child: Row(
                  children: [
                    Icon(Iconsax.ship),
                    SizedBox(width: TSizes.defaultGap,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Shipping Date', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textSecondary)),
                          Text('03 Des 2025', style: Theme.of(context).textTheme.bodyMedium,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: TSizes.defaultGap,),

              /// Arrival Date
              Expanded(
                child: Row(
                  children: [
                    Icon(Iconsax.box),
                    SizedBox(width: TSizes.defaultGap,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Estimated Arrival Date', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textSecondary)),
                          Text('07 Des 2025', style: Theme.of(context).textTheme.bodyMedium,),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}