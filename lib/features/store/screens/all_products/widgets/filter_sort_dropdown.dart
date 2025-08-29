import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/dropdown/dropdown_form_field.dart';

class TFilterSortDropdown extends StatelessWidget {
  const TFilterSortDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Filter Option
        Expanded(
          child: TDropdownFormField(
            icon: Iconsax.filter,
            title: 'Filter by category:',
            items: [ 'All', 'Shirts', 'Outers', 'Pants', 'Dress', 'Bags', 'Shoes', 'Accessories' ],
            onChanged: (value) {},
          ),
        ),
        
        /// Sort Option
        Expanded(
          child: TDropdownFormField(
            icon: Iconsax.filter,
            title: 'Sort by:',
            items: [ 'New', 'Higher Price', 'Lower Price', 'Best Seller', 'Sale', 'Popularity' ],
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}

