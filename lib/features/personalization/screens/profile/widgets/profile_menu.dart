import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TProfileMenu extends StatelessWidget {
  const TProfileMenu({
    super.key,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_24,
    required this.onTap,
  });

  final String title, value;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(TSizes.md),
        child: Row(
          children: [
            Expanded(flex: 3, child: Text(title, style: Theme.of(context) .textTheme .labelLarge! .copyWith(color: TColors.textSecondary), overflow: TextOverflow.ellipsis, )),
            Expanded(flex: 5, child: Text(value, style: Theme.of(context) .textTheme .bodyMedium, overflow: TextOverflow.ellipsis, )),
            Expanded(child: Icon(icon, size: TSizes.iconSm,),),
          ],
        ),
      ),
    );
  }
}