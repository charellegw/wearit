import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 250,
    this.height = 250,
    this.radius = 400,
    this.color = Colors.white,
    this.colorAlpha = 255,
    this.child,
    this.margin,
    this.padding = 0,
  });

  final double width, height, radius;
  final int colorAlpha;
  final Color color;
  final Widget? child;
  final double padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color.withAlpha(colorAlpha),
      ),
      child: child,
    );
  }
}
