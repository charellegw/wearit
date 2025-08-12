import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/images/circular_image.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, required this.name, required this.email,
  });

  final String name, email;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    return ListTile(
      leading: TCircularImage(
        imagePath: TImages.profilePicture,
        padding: 0,
      ),
      title: Text(
        name,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: darkMode ? TColors.textPrimary : TColors.textWhite),
      ),
      subtitle: Text(
        email,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: darkMode ? TColors.textPrimary : TColors.textWhite),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.edit,
            color: darkMode ? TColors.textPrimary : TColors.textWhite,
          )),
    );
  }
}
