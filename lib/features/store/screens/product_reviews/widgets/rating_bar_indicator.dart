import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:wearit/utils/constants/colors.dart';

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({
    super.key, required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 15,
      unratedColor: TColors.iconSecondary,
      itemBuilder: (_, __) => Icon(
        Icons.star,
        color: TColors.iconPrimary,
      ),
    );
  }
}

