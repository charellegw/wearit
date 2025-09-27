import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:wearit/data/repositories/authentication/authentication_repository.dart';
import 'package:wearit/features/common/status/status_pages.dart';
import 'package:wearit/utils/popups/loaders.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  /// Send email automatically & set timer to auto-redirect.
  @override
  void onInit() {
    sendEmailVerification();
    setTimerToAutoRedirect();
    super.onInit();
  }

  /// Send email verification link.
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      TLoaders.successSnackBar(title: 'Email Sent!', message: 'Please check your email inbox and verify your email.');
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh no!', message: e.toString());
    }
  }

  // / A timer to auto-redirecting user to relevant page.
  setTimerToAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if(user?.emailVerified ?? false) {
        timer.cancel();
        Get.off( () => StatusPages.signupSuccess(
          onPrimaryPressed: () => AuthenticationRepository.instance.screenRedirect()));
      }
    });
  }

  /// Checking if email is verified
  checkEmailVerifiedStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off( () => StatusPages.signupSuccess( 
        onPrimaryPressed: () => AuthenticationRepository.instance.screenRedirect()
      ));
    } else {
      TLoaders.errorSnackBar(title: 'Oh no!', message: "Your email not verified yet! Please verify your email to continue.");
    }
  }
}