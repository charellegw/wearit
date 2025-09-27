import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  String id;
  String name;
  String imageURL;
  String parentId;
  bool isFeatured;

  CategoryModel ({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.isFeatured,
    this.parentId = '',
  });

  static CategoryModel empty() => CategoryModel(id:'', name: '', imageURL: '', isFeatured: false);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageURL': imageURL,
      'parentId': parentId,
      'isFeatured': isFeatured,
    };
  }

  factory CategoryModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data();
    if (data != null) {
      // Map Json to the model
      return CategoryModel(
          id: document.id,
          name: data['name'] ?? '',
          imageURL: data['imageURL'] ?? '',
          parentId: data['parentId'] ?? '',
          isFeatured: data['isFeatured'] ?? false);
    } else {
      return CategoryModel.empty();
    }
  }
}