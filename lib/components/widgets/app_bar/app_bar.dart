import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/device/device_utils.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({super.key, this.title, this.backButtonVisibility = false, this.leadingIcon, this.actions, this.leadingOnPressed});

  final Widget? title;
  final bool backButtonVisibility;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: TSizes.horizontalPadding),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: backButtonVisibility 
                  ? IconButton(onPressed: Get.back, icon: Icon(Iconsax.arrow_left))
                  : (leadingIcon != null) ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon!)) : null,
        titleSpacing: 0,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
