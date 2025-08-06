import 'package:flutter/material.dart';
import 'package:wearit/common/widgets/custom_container/blur_filter.dart';
import 'package:wearit/common/widgets/custom_container/circular_container.dart';
import 'package:wearit/common/widgets/custom_container/curved_clip_path.dart';
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
        color: TColors.primaryColor.withAlpha(100),
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 300,
          width: double.infinity,
          child: Stack(
            children: [
              TCircularContainer(),
              TBlurFilter(),
              // Positioned(top: -80, right: -120, child: TCircularContainer(colorAlpha: 20,),),
              // Positioned(top: -80, right: -100, child: TCircularContainer(width: 250, height: 250, colorAlpha: 20,),),
              child, 
            ],
          ),
        ),
      ),
    );
  }
}