import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wearit/data/models/user/user_model.dart';
import 'package:wearit/data/repositories/authentication/authentication_repository.dart';
import 'package:wearit/data/services/cloudinary_service.dart';
import 'package:wearit/utils/exceptions/firebase_exception.dart';
import 'package:wearit/utils/exceptions/format_exception.dart';
import 'package:wearit/utils/exceptions/platform_exception.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final cloudinary = CloudinaryService.instance;

  /// Save user's data into Firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("users").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }

  /// Checking the database if username is available.
  /// 
  /// Return type: (Boolean) : 'true' if username is available, otherwise 'false'.
  Future<bool> isUsernameAvailable(String username) async {
    final snapshot = await _db
        .collection('users')
        .where('username', isEqualTo: username.trim())
        .get();

    return snapshot.docs.isEmpty;
  }

  Future<UserModel> fetchUserDetails() async {
    try {
      final documentSnapshot = await _db.collection("users").doc(AuthenticationRepository.instance.authUser?.uid).get();

      if (documentSnapshot.exists) {
        return UserModel.fromSnapshot(documentSnapshot);
      } else {
        return UserModel.empty();
      }

    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }

  /// Update user data in firestore
    Future<void> updateUserDetails(UserModel updatedUser) async {
      try {
        await _db.collection("users").doc(updatedUser.id).update(updatedUser.toJson());
      } on FirebaseException catch (e) {
        throw TFirebaseException(e.code).message;
      } on FormatException catch (_) {
        throw const TFormatException();
      } on PlatformException catch (e) {
        throw TPlatformException(e.code).message;
      } catch (e) {
        throw 'Something went wrong. Please try again.';
      }
    }

  /// Update any field from specific user in firestore
  Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db.collection("users").doc(AuthenticationRepository.instance.authUser?.uid).update(json);
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }

  /// Remove user data from firestore
  Future<void> removeUserRecord(String userId) async {
    try {
      await _db.collection("users").doc(userId).delete();
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }

  /// Upload any image into Cloudinary
  /// Get and then return the image url.
  Future<String> uploadImage(String path, XFile image) async {
    try {
      final response = await CloudinaryService.uploadImage(image, folder: path);

      if (response != null && response.containsKey('secure_url')) {
        final imageUrl = response['secure_url'];
        return imageUrl;
      } else {
        throw 'Upload failed: No URL returned.';
      }
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }
}