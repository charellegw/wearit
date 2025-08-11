import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TImageSlide extends StatelessWidget {
  const TImageSlide({
    super.key,
    this.width,
    this.height,
    required this.imagePath,
    this.applyImageRadius = true,
    this.borderRadius = TSizes.lg,
    this.border,
    this.backgroundColor = TColors.containerLightGrey,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onTap,
    this.margin,
  });

  final double? width, height;
  final String imagePath;
  final bool applyImageRadius;
  final double borderRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final bool isNetworkImage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imagePath)
                : AssetImage(imagePath) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
