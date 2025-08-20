import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wearit/utils/constants/sizes.dart';

/// A widget for displaying an animated loading indicator with optional text and actiion button.
class TAnimationLoader extends StatelessWidget {
  const TAnimationLoader(
      {super.key,
      required this.text,
      required this.animation,
      this.showAction = false,
      this.actionText,
      this.actionOnPressed});

  final String text, animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? actionOnPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation, width: MediaQuery.of(context).size.width * 0.8),
          const SizedBox(height: TSizes.defaultGap,),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.defaultGap,),
          showAction 
            ? SizedBox( 
              width: 250, 
              child: OutlinedButton(
                onPressed: actionOnPressed, 
                child: Text(
                  actionText!, 
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
                ),
              ),
            )
            : const SizedBox(),
        ],
      ),
    );
  }
}