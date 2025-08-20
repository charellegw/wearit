import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/components/widgets/loaders/animation_loader.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/helpers/helper.dart';

/// An utility class to manage full-screen loading dialog.
class TFullScreenLoader {

  /// This method open a full-screen loading dialog with a given text and animation.
  /// 
  /// Parameters:
  ///   - text: The text to be displayed in the loading dialog.
  ///   - animation: The Lottie animation to be shown.
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      barrierDismissible: false,
      context: Get.overlayContext!, 
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: THelper.isDarkMode(Get.context!) ? TColors.backgroundDark : TColors.backgroundLight,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250,),
              TAnimationLoader(text: text, animation: animation),
            ],
          ),
        )
      )
    );
  }

  /// This method stopping the currently open loading dialog.
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}