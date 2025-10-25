import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class CloudinaryService {
  static final Cloudinary _cloudinary = Cloudinary.fromStringUrl(dotenv.env['CLOUDINARY_URL']!,
  )..config.urlConfig.secure = true;

  static Cloudinary get instance => _cloudinary;

  static Future<Map<String, dynamic>?> uploadImage(XFile image, {String folder = "User"}) async {
    try {
      // Create a MultipartRequst to upload file
      final cloudName = dotenv.env['CLOUDINARY_CLOUD_NAME'];
      final uploadPreset = dotenv.env['CLOUDINARY_PROFILE_UPLOAD_PRESET'];
      final url = Uri.parse("https://api.cloudinary.com/v1_1/$cloudName/image/upload");
      
      // Read file as bytes
      var fileBytes = await image.readAsBytes();

      // Create Multipart Request
      final request = http.MultipartRequest("POST", url)
        ..fields['upload_preset'] = uploadPreset!
        ..fields['folder'] = folder
        ..files.add(
          http.MultipartFile.fromBytes(
            'file',
            fileBytes,
            filename: image.name,
          ),
        );

      // Send request and waigt for the response
      final response = await request.send();
      final resBody = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        return jsonDecode(resBody);
      } else {
        throw ("Upload failed with status: ${response.statusCode}. $resBody.");
      }
    } catch (e) {
      if (e is FirebaseException) {
        throw 'Firebase Exception: ${e.message}';
      } else if (e is SocketException) {
        throw 'Network Error: ${e.message}';
      } else if (e is PlatformException) {
        throw 'Platform Exception: ${e.message}';
      } else {
        throw 'Something went wrong. Please try again.';
      }
    }
  }
  static Future<Map<String, dynamic>?> uploadCategory(Uint8List imageBytes, String categoryName, {String folder = "Category"}) async {
    try {
      // Create a MultipartRequst to upload file
      final cloudName = dotenv.env['CLOUDINARY_CLOUD_NAME'];
      final uploadPreset = dotenv.env['CLOUDINARY_CATEGORY_UPLOAD_PRESET'];
      final url = Uri.parse("https://api.cloudinary.com/v1_1/$cloudName/image/upload");

      // Create Multipart Request
      final request = http.MultipartRequest("POST", url)
        ..fields['upload_preset'] = uploadPreset!
        ..fields['folder'] = folder
        ..files.add(
          http.MultipartFile.fromBytes(
            'file',
            imageBytes,
            filename: categoryName,
          ),
        );

      // Send request and waigt for the response
      final response = await request.send();
      final resBody = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        return jsonDecode(resBody);
      } else {
        throw ("Upload failed with status: ${response.statusCode}. $resBody.");
      }
    } catch (e) {
      if (e is FirebaseException) {
        throw 'Firebase Exception: ${e.message}';
      } else if (e is SocketException) {
        throw 'Network Error: ${e.message}';
      } else if (e is PlatformException) {
        throw 'Platform Exception: ${e.message}';
      } else {
        throw 'Something went wrong. Please try again. 2';
      }
    }
  }
}