import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wearit/data/services/cloudinary_service.dart';
import 'package:wearit/features/store/models/category_model.dart';
import 'package:wearit/utils/exceptions/firebase_auth_exception.dart';
import 'package:wearit/utils/exceptions/firebase_exception.dart';
import 'package:wearit/utils/exceptions/format_exception.dart';
import 'package:wearit/utils/exceptions/platform_exception.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  /// Get all categories
  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final snapshot = await _db.collection('categories').get();
      final categoryList = snapshot.docs.map((document) => CategoryModel.fromSnapshot(document)).toList();
      return categoryList;
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }

  Future<void> uploadCategoryImage(List<CategoryModel> categories) async {
    try {
      for (var category in categories) {
        /// Get image asset, and convert it to bytes
        final ByteData byteData = await rootBundle.load(category.imageURL);
        final Uint8List imageBytes = byteData.buffer.asUint8List();

        /// Upload to cloudinary and get image url
        final response = await CloudinaryService.uploadCategory(imageBytes, category.name);

        if (response != null && response.containsKey('secure_url')) {
        // Set category image url to model attribute
        final imageUrl = response['secure_url'];
        category.imageURL = imageUrl;

        // Save to firestore
        await _db.collection("categories").doc(category.id).set(category.toJson());
      } else {
        throw 'Upload failed: No URL returned.';
      }
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