import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/device/device_utils.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget{
  const TTabBar({
    super.key, required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    return Material(
      color: darkMode ? TColors.backgroundDark : TColors.backgroundLight,
      child: TabBar(
        isScrollable: true,
        labelPadding: const EdgeInsets.symmetric(horizontal: TSizes.xl),
        indicatorColor: TColors.primaryColor,
        unselectedLabelColor: TColors.textSecondary,
        labelColor: TColors.primaryColor,
        tabAlignment: TabAlignment.start,
        tabs: tabs,
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}

