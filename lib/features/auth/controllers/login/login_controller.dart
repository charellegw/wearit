import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wearit/data/repositories/authentication/authentication_repository.dart';
import 'package:wearit/features/personalization/controllers/user_controller.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/networks/network_manager.dart';
import 'package:wearit/utils/popups/full_screen_loader.dart';
import 'package:wearit/utils/popups/loaders.dart';

class LoginController extends GetxController {
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  final rememberMe = false.obs;
  final showPassword = false.obs;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  final userController = Get.put(UserController());

  @override
  void onInit() {
    super.onInit();
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
  }

  Future<void> emailandPasswordLogin() async {
    try {
      // Start Load
      TFullScreenLoader.openLoadingDialog('Logging you in...', TImages.docerAnimation);
      
      // Check connection
      final isConnected = await TNetworkManager.instance.isConnected();
      if(!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      
      // Check form validation
      if(!loginFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // If remember me checked, save user data
      if(rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // Perform Login
      await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Success response
      TFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect(); 
    } catch (e) {
      // Stop loader
      TFullScreenLoader.stopLoading();

      // Displaying generic error to user.
      TLoaders.errorSnackBar(title: 'Oh no!', message: e.toString());
    }
  }

    Future<void> googleLogin() async {
      try {
        // Start Load
        TFullScreenLoader.openLoadingDialog('Logging you in...', TImages.docerAnimation);
        
        // Check connection
        final isConnected = await TNetworkManager.instance.isConnected();
        if(!isConnected) {
          TFullScreenLoader.stopLoading();
          return;
        }

        // Google Auth
        final userCredentials = await AuthenticationRepository.instance.loginWithGoogle();

        // Save user record
        await userController.saveUserRecord(userCredentials);
        
        // Success response
        TFullScreenLoader.stopLoading();

        // Redirect
        AuthenticationRepository.instance.screenRedirect(); 

      } catch (e) {
        // Stop loader
        TFullScreenLoader.stopLoading();

        // Displaying generic error to user.
        TLoaders.errorSnackBar(title: 'Oh no!', message: e.toString());
      }
    }
  }