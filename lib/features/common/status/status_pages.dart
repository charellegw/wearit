import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/components/widgets/pages/status_page.dart';
import 'package:wearit/features/auth/screens/login/login.dart';
import 'package:wearit/navigation_menu.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/text_string.dart';

class StatusPages {
  StatusPages._();
  
  /// Status page with option to continue and resend the verification email.
  /// 
  /// Parameters:
  ///   - email: email address where the verification email will be sent.
  ///   - onContinue: Callback when user clicks the "Continue" button.
  ///   - onResend: Callback when user clicks the "Resend Email" button.
  static TStatusPage verifyEmail({
    required String email,
    required VoidCallback onContinue,
    VoidCallback? onResend,
  }) {
    return TStatusPage(
      animationPath: TImages.mailbox,
      title: TTexts.verifyEmailTitle,
      subtitle: TTexts.verifyEmailSubtitle,
      appBarButtonVisibility: true,
      primaryButtonText: TTexts.continueButton,
      onPrimaryPressed: onContinue, 
      secondaryButtonText: TTexts.resendEmailButton,
      onSecondaryPressed: onResend ?? () {},
      highlightText: email,
    );
  }

  /// Status page successfully create an account.
  /// Pressing continue button will be directing user to login screen.
  static TStatusPage signupSuccess() {
    return TStatusPage(
      animationPath: TImages.successCheck,
      title: TTexts.signupSuccessTitle,
      subtitle: TTexts.signUpSuccessSubtitle,
      appBarButtonVisibility: false,
      primaryButtonText: TTexts.continueButton,
      onPrimaryPressed: () => Get.offAll(() => LoginScreen()),
    );
  }

  /// Status page successfully sent an email to forgot the password. 
  /// Pressing continue button will be directing user to login screen.
  /// 
  /// Parameters:
  ///   - email: email address where the verification email will be sent.
  ///   - onResend: Callback when user clicks the "Resend Email" button.
  static TStatusPage forgotPasswordEmail({
    required String email,
    VoidCallback? onResend,
  }) {
    return TStatusPage(
      animationPath: TImages.mailbox,
      title: TTexts.passwordResetEmailTitle,
      subtitle: TTexts.passwordResetEmailSubtitle,
      appBarButtonVisibility: false,
      primaryButtonText: TTexts.resendEmailButton,
      onPrimaryPressed: onResend ?? (){},
      secondaryButtonText: TTexts.continueButton,
      onSecondaryPressed: () => Get.offAll(() => LoginScreen()),
      highlightText: email,
    );
  }

  /// Status page successfully create an order.
  /// Pressing continue button will be directing user to navigation menu.
  static TStatusPage orderSuccess() {
    return TStatusPage(
      animationPath: TImages.successCheck,
      title: TTexts.orderSuccessTitle,
      subtitle: TTexts.orderSuccessSubtitle,
      appBarButtonVisibility: false,
      primaryButtonText: 'Continue Shopping',
      onPrimaryPressed: () => Get.offAll(() => const NavigationMenu()),
    );
  }


}              