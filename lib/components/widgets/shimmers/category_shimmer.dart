import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/shimmers/shimmer.dart';
import 'package:wearit/utils/constants/sizes.dart';


class TCategoryShimmer extends StatelessWidget {
  const TCategoryShimmer({
    super.key,
    required this.itemCount,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_, __) => const SizedBox(width: TSizes.defaultGap,),
          itemBuilder: (_, __) {
            return const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TShimmerEffect(width: 60, height: 60, radius: 100,),
                SizedBox(height: TSizes.textGap,),
                TShimmerEffect(width: 45, height: 8,),
              ],
            );
          },
        ),
      );
  }
}