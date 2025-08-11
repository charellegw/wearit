import 'dart:ui';

import 'package:flutter/material.dart';

class TBlurFilter extends StatelessWidget {
  const TBlurFilter({
    super.key,
    this.sigmaX = 100,
    this.sigmaY = 100,
    this.width = 300,
    this.height = 300,
    this.radius = 400,
  });

  final double sigmaX, sigmaY, width, height, radius;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
