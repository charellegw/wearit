import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

/// A dropdown form field with optional title to be displayed.
class TDropdownFormField extends StatelessWidget {
  const TDropdownFormField({
    super.key,
    this.icon,
    this.title,
    required this.items,
    required this.onChanged,
  });

  final String? title;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(title != null) ...[
          Text(title!, style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textSecondary),),
          const SizedBox(height: TSizes.textGap,),
        ],
          
        DropdownButtonFormField(
          onChanged: onChanged,
          decoration: InputDecoration(prefixIcon: Icon(icon)),
          items: items.map((option) => DropdownMenuItem(
              value: option, 
              child: Text(option)
            )).toList(),
        )
      ],
    );
  }
}