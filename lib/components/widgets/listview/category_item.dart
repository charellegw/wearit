
import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TCategoryItem extends StatelessWidget {
  const TCategoryItem({
    super.key,
    required this.image,
    required this.title,
    this.titleColor,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color? titleColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.defaultGap),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(TSizes.iconPadding),
              decoration: BoxDecoration(
                color: backgroundColor ?? (darkMode ? TColors.backgroundDark : Colors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: darkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.textGap,
            ),
            SizedBox(
                width: 45,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: titleColor ?? (darkMode ? Colors.black : Colors.white),
                    fontWeight: FontWeight.w600,    
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }
}
