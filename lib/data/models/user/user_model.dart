import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wearit/utils/formaters/formatters.dart';

class UserModel {
  final String id;
  String name;
  String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  String get formattedPhoneNumber => TFormatter.formatPhoneNumber(phoneNumber);

  /// Auto generate username
  static String generateUsername(name) {
    // ubah ke lowercase + hapus spasi
    String base = name.toLowerCase().replaceAll(" ", "");

    // random number 4 digit
    int randomNum = 1000 + Random().nextInt(9000);

    return "${base}_$randomNum";
  }

  static UserModel empty() => UserModel(id: '', name: '', username: '', email: '', phoneNumber: '', profilePicture: '');

  /// Convert model to JSON structure
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'username': username,
      'email': email,
      'phoneNumber': phoneNumber,
      'profilePicture': profilePicture,
    };
  }

  /// Factory to create UserModel with firebase document snapshot.
  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id, 
        name: data['name'] ?? '', 
        username: data['username'] ?? '', 
        email: data['email'] ?? '', 
        phoneNumber: data['phoneNumber'] ?? '', 
        profilePicture: data['profilePicture'] ?? '',
      );
    } else {
      return UserModel.empty();
    }
  }
}