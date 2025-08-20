import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:wearit/data/models/user/user_model.dart';
import 'package:wearit/data/repositories/authentication/authentication_repository.dart';
import 'package:wearit/data/repositories/user/user_repository.dart';
import 'package:wearit/features/common/status/status_pages.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/networks/network_manager.dart';
import 'package:wearit/utils/popups/full_screen_loader.dart';
import 'package:wearit/utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final name = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final showPassword = false.obs;
  final privacyPolicy = false.obs;
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  final userRepo = Get.put(UserRepository());

  void signup() async {
    try {
      // Start Load
      TFullScreenLoader.openLoadingDialog('We are processing your information...', TImages.docerAnimation);
      
      // Check connection
      final isConnected = await TNetworkManager.instance.isConnected();
      if(!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      
      // Check form validation
      if(!signupFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Check username status
      final usernameAvailable = await userRepo.isUsernameAvailable(username.text.trim());
      if (!usernameAvailable) {
        TFullScreenLoader.stopLoading();
        TLoaders.errorSnackBar(title: "Username Unavailable", message: "That username is already taken. Please choose a different username.");
        return;
      }

      // Check privacy policy
      if(!privacyPolicy.value) {
        TFullScreenLoader.stopLoading();
        TLoaders.cautionSnackBar(title: 'Accept Privacy Policy', message: 'In order to create account, please read and agree our Privacy Policy and Terms of Use.');
        return;
      }

      // Register user in Firebase Auth
      final userCredential = await AuthenticationRepository.instance
        .registerWithEmailAndPassword(
          email.text.trim(), 
          password.text.trim()
      );

      final newUser = UserModel(
        id: userCredential.user!.uid, 
        name: name.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      // Save to Firestore
      await userRepo.saveUserRecord(newUser);
      
      // Success response
      TFullScreenLoader.stopLoading();

      TLoaders.successSnackBar(title: 'Congratulations!', message: 'Your account has been successfully created! Verify your email to continue.');

      Get.to(() => StatusPages.verifyEmail(email: newUser.email, onContinue: (){}));

    } catch (e) {
      // Stop loader
      TFullScreenLoader.stopLoading();

      // Displaying generic error to user.
      TLoaders.errorSnackBar(title: 'Oh no!', message: e.toString());
    }
  }
}