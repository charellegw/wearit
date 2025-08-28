import 'package:flutter/material.dart';
import 'package:wearit/features/store/screens/order/widgets/order_item.dart';
import 'package:wearit/utils/constants/sizes.dart';

/// A list view of order items.
class TOrderList extends StatelessWidget {
  const TOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.gridGap,),
      itemBuilder: (_, index) => const TOrderItem(),
    );
  }
}