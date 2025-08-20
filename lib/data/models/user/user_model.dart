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
    }
    throw Exception("User document ${document.id} does not exist");
  }
}