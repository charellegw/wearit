import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/shimmers/shimmer.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key, 
    required this.image, 
    this.size = 50, 
    this.padding = TSizes.sm, 
    this.backgroundColor, 
    this.overlayColor, 
    this.fit = BoxFit.contain, 
    this.isNetworkImage = false,
    this.radius = 100,
  });

  final String image;
  final double size, radius;
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
        shape: BoxShape.circle,
        color: backgroundColor ?? (darkMode ? TColors.containerDark : TColors.containerLight),
      ),
      clipBehavior: Clip.hardEdge,
      child: AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(radius),
          child: isNetworkImage 
            ? CachedNetworkImage(
              fit: fit,
              color: overlayColor,
              imageUrl: image,
              progressIndicatorBuilder: (context, url, downloadProgress) => const TShimmerEffect(width: 60, height: 60, radius: 100,),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            )
            : Image(
              image: AssetImage(image),
              fit: fit,
              color: overlayColor ?? (darkMode ? TColors.containerLight : TColors.backgroundDark),
            ),
        ),
      ),
    );
  }
}
