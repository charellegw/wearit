import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/containers/blur_filter.dart';
import 'package:wearit/components/widgets/containers/circular_container.dart';
import 'package:wearit/components/widgets/containers/curved_clip_path.dart';
import 'package:wearit/utils/constants/colors.dart';

class TAppHeader extends StatelessWidget {
  const TAppHeader({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedClipPath(
      child: Container(
        color: TColors.primaryColor,
        child: Stack(
          children: [
            Positioned(top: -20, right: -20, child: TCircularContainer(colorAlpha: 120,)),
            Positioned(top: -20, right: -20, child: TBlurFilter()),
            // Positioned(top: -80, right: -120, child: TCircularContainer(colorAlpha: 20,),),
            // Positioned(top: -80, right: -100, child: TCircularContainer(width: 250, height: 250, colorAlpha: 20,),),
            child, 
          ],
        ),
      ),
    );
  }
}