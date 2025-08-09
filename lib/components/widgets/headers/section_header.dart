import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TSectionHeader extends StatelessWidget {
  const TSectionHeader({
    super.key, 
    this.buttonVisible = false, 
    required this.title, 
    this.buttonText = "View all", 
    this.titleColor, 
    this.buttonTextColor, 
    this.buttonOnPressed,
  });

  final bool buttonVisible;
  final String title;
  final String buttonText;
  final Color? titleColor;
  final Color? buttonTextColor;
  final void Function()? buttonOnPressed;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            color: titleColor ?? (darkMode ? Colors.white : Colors.black),
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (buttonVisible) TextButton(onPressed: buttonOnPressed!, child: Text(buttonText, style: Theme.of(context).textTheme.labelLarge!.copyWith(color: buttonTextColor ?? (darkMode ? TColors.backgroundLight.withAlpha(50) : TColors.backgroundDark.withAlpha(50))))),
      ],
    );
  }
}
