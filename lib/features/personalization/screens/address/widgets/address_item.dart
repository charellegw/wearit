import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({
    super.key,
    this.selectedAddress = false,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    return TRoundedContainer(
      width: double.infinity,
      borderVisibility: true,
      borderColor: selectedAddress ? Colors.transparent : (darkMode ? TColors.borderSecondary.withAlpha(120) : Colors.white),
      backgroundColor: selectedAddress ? TColors.primaryColor : (darkMode ? TColors.containerDark : TColors.containerLight),
      margin: EdgeInsets.only(bottom: TSizes.gridGap),
      padding: EdgeInsets.all(TSizes.md),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 10,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? (darkMode ? Colors.white : Colors.black) : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Recipient's Name
              Text(
                'Charelle Winarto',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: TSizes.defaultGap,),

              /// Recipient's Phone Number
              Text(
                '(+62) 82192034034',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(color: selectedAddress ? null : TColors.textSecondary),
              ),
              const SizedBox(height: TSizes.textGap,),

              /// Street
              Text(
                'Jl. Raya Kb. Jeruk No. 27, RT.1/RW.9',
                softWrap: true,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(color: selectedAddress ? null : TColors.textSecondary),
              ),
              const SizedBox(height: TSizes.textGap,),

              /// City, State, Country, Postal Code
              Text(
                'KEMANGGISAN, PALMERAH, JAKARTA BARAT, INDONESIA 11530',
                softWrap: true,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(color: selectedAddress ? null : TColors.textSecondary),
              ),
            ],
          )
        ],
      ),
    );
  }
}