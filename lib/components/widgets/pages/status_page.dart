import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';
import 'package:lottie/lottie.dart';

class TStatusPage extends StatelessWidget {
  const TStatusPage({
    super.key,
    this.imagePath,
    this.animationPath,
    required this.title,
    required this.subtitle,
    required this.primaryButtonText,
    required this.onPrimaryPressed,
    required this.appBarButtonVisibility,
    this.highlightText,
    this.secondaryButtonText,
    this.onSecondaryPressed,
  });

  final String? imagePath, animationPath;
  final String title, subtitle, primaryButtonText;
  final bool appBarButtonVisibility;
  final VoidCallback onPrimaryPressed;
  final String? secondaryButtonText, highlightText;
  final VoidCallback? onSecondaryPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = THelper.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          if (appBarButtonVisibility == true) ...[
            IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Icons.close_rounded)),
          ]
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: TSizes.defaultGap,
            left: TSizes.horizontalPadding,
            right: TSizes.horizontalPadding,
            bottom: TSizes.horizontalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (animationPath != null && imagePath == null) 
                Lottie.asset(animationPath!, width: MediaQuery.of(context).size.width * 0.6),
              if (animationPath == null && imagePath != null)
                Image(
                  width: TSizes.imageLg,
                  image: AssetImage(imagePath!),
                ),
              const SizedBox(
                height: TSizes.sectionGap,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.sectionGap,
              ),
              if (highlightText != null) ...[
                Text(
                  highlightText!,
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: TSizes.sectionGap,
                ),
              ],
              Text(
                subtitle,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: TColors.textSecondary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.sectionGap,
              ),
              SizedBox(
                width: double.infinity,
                height: TSizes.buttonHeight,
                child: ElevatedButton(
                    onPressed: onPrimaryPressed,
                    child: Text(
                      primaryButtonText,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),
                    )),
              ),
              if (secondaryButtonText != null &&
                  onSecondaryPressed != null) ...[
                const SizedBox(
                  height: TSizes.buttonGap,
                ),
                SizedBox(
                  width: double.infinity,
                  height: TSizes.buttonHeight,
                  child: ElevatedButton(
                    onPressed: onSecondaryPressed!,
                    style: ElevatedButton.styleFrom(
                      foregroundColor:
                          isDark ? TColors.textWhite : TColors.textPrimary,
                      backgroundColor: isDark
                          ? TColors.backgroundDark
                          : TColors.buttonSecondary,
                    ),
                    child: Text(
                      secondaryButtonText!,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: isDark ? Colors.white : Colors.black),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
