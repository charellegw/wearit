import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/constants/text_string.dart';
import 'package:wearit/utils/helpers/helper.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    image: AssetImage(TImages.onboarding1),
                    width: THelper.getScreenWidth(context) * 0.8,
                    height: THelper.getScreenHeight() * 0.6,
                  ),
                  Text(
                    TTexts.onboardingTitle1, 
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: TSizes.xl,),
                  Text(
                    TTexts.onboardingCaption1, 
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}