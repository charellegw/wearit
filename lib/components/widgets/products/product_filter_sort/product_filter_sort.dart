import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/dropdown/filter_sort_dropdown.dart';
import 'package:wearit/components/widgets/layouts/grid_layout.dart';
import 'package:wearit/components/widgets/products/product_cards/product_vertical_card.dart';
import 'package:wearit/utils/constants/sizes.dart';

/// Products grid view with sort and filter dropdown
class TProductWithFilterSort extends StatelessWidget {
  const TProductWithFilterSort({
    super.key,
    this.showFilter = true,
    this.showSort = true,
  });

  final bool showFilter, showSort;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TFilterSortDropdown(showFilter: showFilter, showSort: showSort,),
        const SizedBox(height: TSizes.sectionGap,),
    
        TGridLayout(
          itemCount: 8,
          itemBuilder: (_, index) => const TProductVerticalCard()
        ),
      ],
    );
  }
}

