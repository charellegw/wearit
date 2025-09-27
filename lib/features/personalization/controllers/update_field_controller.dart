import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/data/repositories/user/user_repository.dart';
import 'package:wearit/features/personalization/controllers/user_controller.dart';
import 'package:wearit/features/personalization/screens/profile/profile.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/networks/network_manager.dart';
import 'package:wearit/utils/popups/full_screen_loader.dart';
import 'package:wearit/utils/popups/loaders.dart';

class UpdateFieldController extends GetxController {
  static UpdateFieldController get instance => Get.find();

  final username = TextEditingController();
  final name = TextEditingController();
  final phoneNumber = TextEditingController();

  final userRepo = Get.put(UserRepository());
  final userController = UserController.instance;

  Future<void> updateSingleField(String fieldKey, String value) async {
    try {
      // Start Load
      TFullScreenLoader.openLoadingDialog('Updating your new information...', TImages.docerAnimation);
      
      // Check connection
      final isConnected = await TNetworkManager.instance.isConnected();
      if(!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Update data in firestore
      await userRepo.updateSingleField({fieldKey: value.trim()});

      // Update Rx user value
      userController.user.update((val) {
      if (val != null) {
        switch (fieldKey) {
          case 'name':
            val.name = value;
            break;
          case 'username':
            val.username = value;
            break;
          case 'phoneNumber':
            val.phoneNumber = value;
            break;
        }
      }
    });

      // Success response
      TFullScreenLoader.stopLoading();
      TLoaders.successSnackBar(title: 'Update Successful!', message: 'Your new information is successfully updated.');

      // Redirect
      Get.off(() => const ProfileScreen());
    } catch (e) {
      // Stop loader
      TFullScreenLoader.stopLoading();

      // Displaying generic error to user.
      TLoaders.errorSnackBar(title: 'Oh no!', message: e.toString());
    }
  }
}