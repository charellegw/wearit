
import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/images/circular_image.dart';
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
    this.isNetworkImage = true,
  });

  final String image, title;
  final Color? titleColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.defaultGap),
        child: Column(
          children: [
            TCircularImage(
              image: image,
              fit: BoxFit.cover,
              size: 60,
              padding: TSizes.iconPadding,
              backgroundColor: backgroundColor,
              isNetworkImage: isNetworkImage,
              radius: 0,
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
