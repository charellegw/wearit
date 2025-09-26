import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:wearit/data/models/user/user_model.dart';
import 'package:wearit/data/repositories/user/user_repository.dart';
import 'package:wearit/utils/popups/loaders.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepo = Get.put(UserRepository());
  final profileLoading = false.obs;

  Rx<UserModel> user = UserModel.empty().obs;

  @override
  void onInit() {
      super.onInit();
      fetchUserRecord();
  }

  Future<void> fetchUserRecord() async {
    try {
      profileLoading.value = true;
      final user = await userRepo.fetchUserDetails();
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
        await userRepo.saveUserRecord(user);
      }
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Data Not Saved!', message: "Something went wrong while saving your information. Please re-save your data in your profile.");
    }
  } 
}