import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/buttons/icon_button.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/components/widgets/headers/brand_item_header.dart';
import 'package:wearit/components/widgets/images/image_thumbnail.dart';
import 'package:wearit/components/widgets/products/product_element/label_product.dart';
import 'package:wearit/components/widgets/products/product_element/text_product.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TProductVerticalCard extends StatelessWidget {
  const TProductVerticalCard({super.key, this.isDiscount = true});

  final bool isDiscount;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 190,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.cardRadius),
          color:
              darkMode ? TColors.borderSecondary.withAlpha(120) : Colors.white,
        ),
        child: Column(
          children: [
            TRoundedContainer(
              padding: const EdgeInsets.all(TSizes.sm),
              child: Column(
                children: [
                  Stack(
                    children: [
                      TImageThumbnail(
                        width: 190,
                        height: 190,
                        imagePath: TImages.product1,
                        fit: BoxFit.contain,
                        borderRadius: TSizes.cardRadius,
                        // border: Border.all(color: darkMode ? TColors.borderSecondary : Colors.white, width: 1),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: TLabelProduct(
                          text: '-20%',
                          backgroundColor: TColors.errorRed,
                          borderColor: TColors.errorRed,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: TIconButton(
                          icon: Iconsax.heart5,
                          iconColor: Colors.red,
                          radius: 100,
                          backgroundColor: darkMode
                              ? TColors.containerDark
                              : TColors.containerLight,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.textGap,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TBrandItemHeader(productName: 'New Balance 530', brandName: 'New Balance',),
                      const SizedBox(
                        height: TSizes.textGap,
                      ),
                      TLabelProduct(
                        text: '4.8',
                        icon: Icons.star,
                        iconColor: TColors.cautionYellow,
                        backgroundColor: TColors.cautionYellow,
                        borderColor: TColors.cautionYellow,
                        textColor: darkMode ? Colors.white : Colors.black,
                      ),
                      const SizedBox(
                        height: TSizes.textGap,
                      ),
                      // Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (isDiscount)
                                TTextProduct(
                                  text: '\$142.8',
                                  isDiscountPrice: true,
                                ),
                              TTextProduct(
                                text: '\$119',
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: TSizes.textGap,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: darkMode
                                    ? Colors.white
                                    : TColors.containerDark,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(TSizes.cardRadius),
                                  bottomRight:
                                      Radius.circular(TSizes.cardRadius),
                                )),
                            child: Icon(
                              Iconsax.add,
                              color: darkMode ? Colors.black : Colors.white,
                              size: TSizes.iconMd * 1.2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}