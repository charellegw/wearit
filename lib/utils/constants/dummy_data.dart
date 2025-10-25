import 'package:wearit/features/store/models/category_model.dart';
import 'package:wearit/utils/constants/images_string.dart';

class TDummyData {
  static final List<CategoryModel> categories = [
    /// Featured Categories
    CategoryModel (
      id: '1',
      name: 'Shirts',
      imageURL: TImages.iShirt,
      isFeatured: true,
    ), 
    CategoryModel (
      id: '2',
      name: 'Pants',
      imageURL: TImages.iPants,
      isFeatured: true,
    ), 
    CategoryModel (
      id: '3',
      name: 'Dress',
      imageURL: TImages.iDress,
      isFeatured: true,
    ), 
    CategoryModel (
      id: '4',
      name: 'Suit',
      imageURL: TImages.iSuits,
      isFeatured: true,
    ), 
    CategoryModel (
      id: '5',
      name: 'Outer',
      imageURL: TImages.iOuter,
      isFeatured: true,
    ), 
    CategoryModel (
      id: '6',
      name: 'Bags',
      imageURL: TImages.iBags,
      isFeatured: true,
    ), 
    CategoryModel (
      id: '7',
      name: 'Shoes',
      imageURL: TImages.iShoes,
      isFeatured: true,
    ), 
    CategoryModel (
      id: '8',
      name: 'Accessories',
      imageURL: TImages.iAccs,
      isFeatured: true,
    ), 

    /// Sub-categories
    CategoryModel ( id: '9', name: 'New Arrival', imageURL: TImages.iShirt, parentId: '1', isFeatured: false, ), 
    CategoryModel ( id: '10', name: 'Trendy Shirts', imageURL: TImages.iShirt, parentId: '1', isFeatured: false, ), 
    CategoryModel ( id: '11', name: 'Casual Shirts', imageURL: TImages.iShirt, parentId: '1', isFeatured: false, ), 
    CategoryModel ( id: '12', name: 'Shirts For Work', imageURL: TImages.iShirt, parentId: '1', isFeatured: false, ), 
    CategoryModel ( id: '13', name: 'Hijabi-friendly Shirts', imageURL: TImages.iShirt, parentId: '1', isFeatured: false, ), 
    
    CategoryModel ( id: '14', name: 'New Arrival', imageURL: TImages.iPants, parentId: '2', isFeatured: false, ), 
    CategoryModel ( id: '15', name: 'Trendy Pants', imageURL: TImages.iPants, parentId: '2', isFeatured: false, ), 
    CategoryModel ( id: '16', name: 'Unisex Jeans', imageURL: TImages.iPants, parentId: '2', isFeatured: false, ), 
    CategoryModel ( id: '17', name: 'Pants For Work', imageURL: TImages.iPants, parentId: '2', isFeatured: false, ), 
    CategoryModel ( id: '18', name: 'Trousers and Shorts', imageURL: TImages.iPants, parentId: '2', isFeatured: false, ), 
    CategoryModel ( id: '19', name: 'All Size Pants', imageURL: TImages.iPants, parentId: '2', isFeatured: false, ), 

    CategoryModel ( id: '20', name: 'New Arrival', imageURL: TImages.iDress, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '21', name: 'Trendy Dress', imageURL: TImages.iDress, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '22', name: 'Casual Dress', imageURL: TImages.iDress, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '23', name: 'Formal Dress', imageURL: TImages.iDress, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '24', name: 'Dress For Party', imageURL: TImages.iDress, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '25', name: 'Summer Vibes Dress', imageURL: TImages.iDress, parentId: '3', isFeatured: false, ), 
    
    CategoryModel ( id: '26', name: 'New Arrival', imageURL: TImages.iSuits, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '27', name: 'Trendy Suits', imageURL: TImages.iSuits, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '28', name: 'Designer Suits', imageURL: TImages.iSuits, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '29', name: 'Slim Fit Suits', imageURL: TImages.iSuits, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '30', name: 'Suits For Work', imageURL: TImages.iSuits, parentId: '3', isFeatured: false, ), 
    
    CategoryModel ( id: '31', name: 'New Arrival', imageURL: TImages.iOuter, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '32', name: 'Trendy Outers', imageURL: TImages.iOuter, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '33', name: 'Denim Jackets', imageURL: TImages.iOuter, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '34', name: 'Leather Jackets', imageURL: TImages.iOuter, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '35', name: 'Unisex Hoodies', imageURL: TImages.iOuter, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '36', name: 'Unisex Cardigans', imageURL: TImages.iOuter, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '37', name: 'Blazers For Work', imageURL: TImages.iOuter, parentId: '3', isFeatured: false, ), 
  
    CategoryModel ( id: '38', name: 'New Arrival', imageURL: TImages.iShoes, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '39', name: 'Trendy Shoes', imageURL: TImages.iShoes, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '40', name: 'Sports Shoes', imageURL: TImages.iShoes, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '41', name: 'Casual Shoes', imageURL: TImages.iShoes, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '42', name: 'High Heels', imageURL: TImages.iShoes, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '43', name: 'Unisex Boots', imageURL: TImages.iShoes, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '44', name: 'Sandals and Slides', imageURL: TImages.iShoes, parentId: '3', isFeatured: false, ), 

    CategoryModel ( id: '45', name: 'New Arrival', imageURL: TImages.iBags, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '46', name: 'Trendy Bags', imageURL: TImages.iBags, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '47', name: 'High-end Designer Bags', imageURL: TImages.iBags, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '48', name: 'Casual Tote Bags', imageURL: TImages.iBags, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '49', name: 'Backpacks', imageURL: TImages.iBags, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '50', name: 'Shoulder Bags', imageURL: TImages.iBags, parentId: '3', isFeatured: false, ), 

    CategoryModel ( id: '51', name: 'New Arrival', imageURL: TImages.iBags, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '52', name: 'Trendy Accessories', imageURL: TImages.iBags, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '53', name: 'Luxury Jewelry', imageURL: TImages.iBags, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '54', name: 'Watches', imageURL: TImages.iBags, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '55', name: 'Hats and Caps', imageURL: TImages.iBags, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '56', name: 'Sunglasses', imageURL: TImages.iBags, parentId: '3', isFeatured: false, ), 
    CategoryModel ( id: '57', name: 'Formal Belts', imageURL: TImages.iBags, parentId: '3', isFeatured: false, ), 


  ];
}