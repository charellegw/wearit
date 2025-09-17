import 'package:flutter/material.dart';
import 'package:wearit/features/store/screens/product_reviews/widgets/rating_bar_indicator.dart';
import 'package:wearit/features/store/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:wearit/utils/constants/colors.dart';

/// Rating value with data distribution displayed in progress indicator.
class TRatingDetails extends StatelessWidget {
  const TRatingDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Text( '4.8', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w400, fontSize: 30), ),
                TRatingBarIndicator(rating: 4.8,),
                Text( '4,237', style: Theme.of(context) .textTheme .labelLarge! .copyWith(color: TColors.textSecondary), ),
              ],
        )),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressIndicator(text: '5', value: 0.7,),
              TRatingProgressIndicator(text: '4', value: 0.15,),
              TRatingProgressIndicator(text: '3', value: 0.10,),
              TRatingProgressIndicator(text: '2', value: 0.03,),
              TRatingProgressIndicator(text: '1', value: 0.02,),
            ],
          ),
        )
      ],
    );
  }
}

