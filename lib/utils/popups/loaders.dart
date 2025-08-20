import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/utils/constants/colors.dart';

class TLoaders {
  static successSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(
      title,
      message,
      colorText: Colors.black,
      backgroundColor: TColors.successGreen,
      duration: Duration(seconds: duration),
      snackPosition: SnackPosition.TOP,
      shouldIconPulse: true, 
      icon: const Icon(Iconsax.check, color: Colors.black,),
      margin: const EdgeInsets.all(10),
      isDismissible: true,
    );
  }

  static cautionSnackBar({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      colorText: Colors.black,
      backgroundColor: TColors.cautionYellow,
      duration: const Duration(seconds: 3),
      snackPosition: SnackPosition.TOP,
      shouldIconPulse: true, 
      icon: const Icon(Iconsax.warning_2, color: Colors.black,),
      margin: const EdgeInsets.all(20),
      isDismissible: true,
    );
  }

  static errorSnackBar({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      colorText: Colors.black,
      backgroundColor: TColors.errorRed,
      duration: const Duration(seconds: 3),
      snackPosition: SnackPosition.TOP,
      shouldIconPulse: true, 
      icon: const Icon(Iconsax.warning_2, color: Colors.black,),
      margin: const EdgeInsets.all(20),
      isDismissible: true,
    );

  }
}