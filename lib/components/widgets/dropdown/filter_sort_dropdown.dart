import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/dropdown/dropdown_form_field.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TFilterSortDropdown extends StatelessWidget {
  const TFilterSortDropdown({
    super.key,
    this.showFilter = true,
    this.showSort = true,
  });

  final bool showFilter, showSort;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Filter Option
        if (showFilter) ...[
          Expanded(
            child: TDropdownFormField(
              icon: Iconsax.filter,
              title: 'Select category',
              items: [ 'All', 'Shirts', 'Outers', 'Pants', 'Dress', 'Bags', 'Shoes', 'Accessories' ],
              onChanged: (value) {},
            ),
          ),
        
          const SizedBox(width: TSizes.gridGap),
        ],

        /// Sort Option
        if (showSort) ...[
          Expanded(
            child: TDropdownFormField(
              icon: Iconsax.sort,
              title: 'Sort by',
              items: [ 'New', 'Higher Price', 'Lower Price', 'Best Seller', 'Sale', 'Popularity' ],
              onChanged: (value) {},
            ),
          ),
        ],
      ],
    );
  }
}

