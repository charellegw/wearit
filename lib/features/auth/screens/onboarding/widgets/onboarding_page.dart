import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage(
      {super.key,
      required this.image,
      required this.title,
      required this.caption});

  final String image, title, caption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: TSizes.screenVertical, 
        horizontal: TSizes.screenHorizontal
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage(image),
              width: THelper.getScreenWidth(context) * 0.8,
              height: THelper.getScreenHeight() * 0.4,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.xl,
            ),
            Text(
              caption,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}