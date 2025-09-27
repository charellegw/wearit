import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/features/personalization/controllers/user_controller.dart';
import 'package:wearit/utils/helpers/helper.dart';
import 'package:wearit/utils/popups/shimmer.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, required this.trailingOnPressed,
  });

  final VoidCallback trailingOnPressed;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    final controller = UserController.instance;
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(TImages.profilePicture),
      ),
      title: Obx(
        () { 
          if (controller.profileLoading.value) {
            return const TShimmerEffect(width: 80, height: 15);
          }
          return Text(
            controller.user.value.name,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: darkMode ? TColors.textPrimary : TColors.textWhite),
          );
        }
      ),
      subtitle: Obx(
        () { 
          if (controller.profileLoading.value) {
            return const TShimmerEffect(width: 80, height: 15);
          }
          return Text(
            controller.user.value.email,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: darkMode ? TColors.textPrimary : TColors.textWhite),
          );
        }
      ),      
      trailing: IconButton(
          onPressed: trailingOnPressed,
          icon: Icon(
            Iconsax.edit,
            color: darkMode ? TColors.textPrimary : TColors.textWhite,
          )),
    );
  }
}
