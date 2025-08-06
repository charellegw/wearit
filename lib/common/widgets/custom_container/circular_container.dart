import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 200,
    this.height = 200,
    this.radius = 400,
    this.color = TColors.primaryColor,
    this.colorAlpha = 150,
    this.child,
  });

  final double width, height, radius;
  final int colorAlpha;
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color.withAlpha(colorAlpha),
      ),
      child: child,
    );
  }
}
