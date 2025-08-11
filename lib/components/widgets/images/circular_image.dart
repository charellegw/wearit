import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key, 
    required this.imagePath, 
    this.size = 55, 
    this.padding = TSizes.md, 
    this.backgroundColor, 
    this.overlayColor, 
    this.fit = BoxFit.contain, 
    this.isNetworkImage = false,
  });

  final String imagePath;
  final double size;
  final double padding;
  final Color? backgroundColor, overlayColor;
  final BoxFit? fit;
  final bool? isNetworkImage;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);

    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ?? (darkMode ? TColors.backgroundDark : TColors.backgroundLight),
      ),
      child: Image(
        image: AssetImage(TImages.iShirt),
        color: overlayColor ?? (darkMode ? TColors.containerLight : TColors.backgroundDark),
      ),
    );
  }
}
