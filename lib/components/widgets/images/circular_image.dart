import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/shimmers/shimmer.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key, 
    required this.imagePath, 
    this.size = 50, 
    this.padding = TSizes.sm, 
    this.backgroundColor, 
    this.overlayColor, 
    this.fit = BoxFit.contain, 
    this.isNetworkImage = false,
  });

  final String imagePath;
  final double size;
  final double padding;
  final Color? backgroundColor, overlayColor;
  final BoxFit fit;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);

    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ?? (darkMode ? TColors.containerDark : TColors.containerLight),
      ),
      child: 
      isNetworkImage 
        ? CachedNetworkImage(
          fit: fit,
          color: overlayColor,
          imageUrl: imagePath,
          progressIndicatorBuilder: (context, url, downloadProgress) => const TShimmerEffect(width: 60, height: 60, radius: 100,),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        )
        : 
        Image(
          image: AssetImage(imagePath),
          fit: fit,
          color: overlayColor ?? (darkMode ? TColors.containerLight : TColors.backgroundDark),
        ),
    );
  }
}
