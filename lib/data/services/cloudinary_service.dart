import 'dart:convert';
import 'package:cloudinary_url_gen/cloudinary.dart';
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

      // var multipartFile = http.MultipartFile.fromBytes(image.name, fileBytes, filename: image.path);
      
      // Add file part to the request
      // request.files.add(multipartFile);

      // request.fields['upload_preset'] = "user_profile_upload";
      // request.fields['reseource_type'] = "image";

      // Send request and waigt for the response
      final response = await request.send();
      final resBody = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        return jsonDecode(resBody);
      } else {
        print ("Upload failed with status: ${response.statusCode}. ${resBody}.");
        return null;
      }
    } catch (e) {
      throw "Upload error: $e";
    }
  }
}