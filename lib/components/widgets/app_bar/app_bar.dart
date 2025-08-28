import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/device/device_utils.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.title,
      this.backButtonVisibility = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed,
      this.backButtonColor});

  final Widget? title;
  final bool backButtonVisibility;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final Color? backButtonColor;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: backButtonVisibility ? 0 : TSizes.horizontalPadding),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: backButtonVisibility 
                  ? IconButton(onPressed: Get.back, icon: Icon(Icons.keyboard_arrow_left, color: backButtonColor ?? (darkMode ? Colors.white : Colors.black),))
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
