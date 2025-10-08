import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wearit/data/models/user/user_model.dart';
import 'package:wearit/data/repositories/user/user_repository.dart';
import 'package:wearit/utils/popups/loaders.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());
  Rx<UserModel> user = UserModel.empty().obs;

  final hidePassword = false.obs;
  final imageUploading = false.obs;
  final profileLoading = false.obs;
  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();
  GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
      super.onInit();
      fetchUserRecord();
  }

  Future<void> fetchUserRecord() async {
    try {
      profileLoading.value = true;
      final user = await userRepository.fetchUserDetails();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    } finally {
      profileLoading.value = false;
    }
  }

  /// Save user's registration record from federated identity provider.
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      // Refresh RX User
      await fetchUserRecord();

      // If user is not stored yet, then save user record
      if(user.value.id.isEmpty) {
        if (userCredentials != null) {
          final generatedUsername = UserModel.generateUsername(userCredentials.user!.displayName ?? '');

          // Map data
          final user = UserModel(
            id: userCredentials.user!.uid, 
            name: userCredentials.user!.displayName ?? '', 
            username: generatedUsername, 
            email: userCredentials.user!.email ?? '', 
            phoneNumber: userCredentials.user!.phoneNumber ?? '', 
            profilePicture: userCredentials.user!.photoURL ?? ''
          );

          // Save user data
          await userRepository.saveUserRecord(user);
        }
      }
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Data Not Saved!', message: "Something went wrong while saving your information. Please re-save your data in your profile.");
    }
  } 

  // Delete Account Warning Popup

  // Delete User Account

  // Upload avatar image
  uploadProfileImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 70, maxWidth: 512, maxHeight: 512,);

      if(image != null) {
        // Start loader
        imageUploading.value = true;

        // Upload image
        final imageUrl = await userRepository.uploadImage('User', image);

        // Update User Record into firestore
        Map<String, dynamic> json = {'profilePicture': imageUrl};
        await userRepository.updateSingleField(json);

        // Update RX User
        user.value.profilePicture = imageUrl;
        user.refresh();

        // Success Response
        TLoaders.successSnackBar(title: 'Photo Profile Changed!', message: 'Your photo profile has been successfully updated!');
      }
    } catch (e) {
      // Fail Response
      TLoaders.errorSnackBar(title: 'Oh no!', message: 'Something went wrong: $e');
    } finally {
      // Stop loader
      imageUploading.value = false;
    }
  }
}