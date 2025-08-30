import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/images/image_thumbnail.dart';
import 'package:wearit/components/widgets/products/product_element/label_product.dart';
import 'package:wearit/components/widgets/products/product_element/price_product.dart';
import 'package:wearit/features/store/screens/product_details/widgets/rating_sold.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Variation
        Text('01. Navy', style: Theme.of(context).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w600),),
        const SizedBox(height: TSizes.textGap,),
        SizedBox(
          height: 60,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: AlwaysScrollableScrollPhysics(),
            itemCount: 6,
            separatorBuilder: (_, __) => const SizedBox(width: TSizes.gridGap/2,),
            itemBuilder: (_, index) => TImageThumbnail(
              imagePath: TImages.product1,
              fit: BoxFit.contain,
              height: 60,
              width: 60,
              borderRadius: TSizes.radiusSm,
              padding: EdgeInsets.all(TSizes.md),
              backgroundColor: THelper.isDarkMode(context)
                  ? TColors.containerDark
                  : TColors.containerLight,
              border: Border.all(color: TColors.borderSecondary.withAlpha(120)),
            ),
          ),
        ),
        const SizedBox(height: TSizes.defaultGap,),
    
    
        /// Product Name
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Text('New Balance 530', maxLines: 2, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w500),)),
          ],
        ),
        const SizedBox(height: TSizes.defaultGap/2,),
    
        /// Product Price
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(child: TPriceProduct(text: '119', textSize: 20,)),
            const SizedBox(width: TSizes.textGap,),
            Flexible(child: TPriceProduct(text: '142.8', isDiscountPrice: true, textSize: 14,)),
            const SizedBox(width: TSizes.textGap,),
            Flexible(child: TLabelProduct(text: '-20%', backgroundColor: TColors.errorRed, borderColor: TColors.errorRed, textColor: THelper.isDarkMode(context) ? Colors.white : Colors.black,)),
        /// Rating & Sold
          ],
        ),
        const SizedBox(height: TSizes.sectionGap,),
    
        TRatingAndSold(),
        const SizedBox(height: TSizes.sectionGap,),
        /// Product Size
        TSectionHeader(title: 'Size',),
        const SizedBox(height: TSizes.defaultGap,),
        SizedBox(
          height: 40,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: 9,
              separatorBuilder: (_, __) => const SizedBox(width: TSizes.gridGap/2,),
              itemBuilder: (_, index) => TRoundedContainer(
                height: 40,
                radius: TSizes.radiusSm,
                padding: EdgeInsets.all(TSizes.md),
                backgroundColor: THelper.isDarkMode(context)
                    ? TColors.containerDark
                    : TColors.containerLight,
                borderVisibility: true,
                borderColor: TColors.borderSecondary.withAlpha(120),
                child: Text(
                  '36.5',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
        ),
        const SizedBox(height: TSizes.sectionGap,),
    
        /// Product Description
        TSectionHeader(title: 'Description',),
        const SizedBox(height: TSizes.defaultGap,),
        ReadMoreText(
          '[Ready Stock] Original 100% from New Balance Official Store. Sport snicker with retro style. More than 15 available colors and sizes both for woman and man. Grab yours! ',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'show more',
          trimExpandedText: 'show less',
          moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: TColors.primaryColor),
          lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: TColors.textSecondary),
        ),
      ],
    );
  }
}

