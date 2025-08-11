import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';

class TTextProductCard extends StatelessWidget {
  const TTextProductCard({
    super.key,
    required this.text,
    this.isSmallText = false,
    this.isDiscountPrice = false,
    this.maxLines = 1,
    this.align = TextAlign.left, 
    this.textColor,
  });

  final String text;
  final bool isSmallText;
  final bool isDiscountPrice;
  final int maxLines;
  final TextAlign align;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isDiscountPrice
          ? Theme.of(context).textTheme.labelLarge!.copyWith(
              color: TColors.textSecondary,
              decoration: TextDecoration.lineThrough)
          : isSmallText
              ? Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: textColor ?? TColors.textSecondary)
              : Theme.of(context).textTheme.headlineSmall,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: align,
    );
  }
}
