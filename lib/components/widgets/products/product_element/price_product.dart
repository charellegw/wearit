import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';

class TPriceProduct extends StatelessWidget {
  const TPriceProduct({
    super.key,
    required this.text,
    this.currency = '\$',
    this.isDiscountPrice = false,
    this.maxLines = 1,
    this.align = TextAlign.left, 
    this.textColor,
    this.textSize,
  });

  final String text, currency;
  final bool isDiscountPrice;
  final int maxLines;
  final TextAlign align;
  final Color? textColor;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      currency + text,
      style: isDiscountPrice
          ? Theme.of(context).textTheme.labelLarge!.copyWith(
              color: TColors.textSecondary,
              decoration: TextDecoration.lineThrough,
              fontSize: textSize,
            )
          : Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: textColor,
              fontSize: textSize,
            ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: align,
    );
  }
}
