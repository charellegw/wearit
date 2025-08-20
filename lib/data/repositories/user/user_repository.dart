import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wearit/data/models/user/user_model.dart';
import 'package:wearit/utils/exceptions/firebase_exception.dart';
import 'package:wearit/utils/exceptions/format_exception.dart';
import 'package:wearit/utils/exceptions/platform_exception.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Save user's data into Firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
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
        .collection('Users')
        .where('username', isEqualTo: username.trim())
        .get();

    return snapshot.docs.isEmpty;
  }
}