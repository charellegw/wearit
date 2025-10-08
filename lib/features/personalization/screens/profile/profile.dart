import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/images/circular_image.dart';
import 'package:wearit/components/widgets/shimmers/shimmer.dart';
import 'package:wearit/features/personalization/controllers/update_field_controller.dart';
import 'package:wearit/features/personalization/screens/profile/widgets/update_field.dart';
import 'package:wearit/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:wearit/features/personalization/controllers/user_controller.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/validators/validator.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    final updateController = Get.put(UpdateFieldController());
    
    return Scaffold(
      appBar: TAppBar(
        title: Text( 'Profile', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600), ),
        backButtonVisibility: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.horizontalPadding),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Obx(
                      () {
                        final networkImage = controller.user.value.profilePicture;
                        final profilePicture = networkImage.isNotEmpty ? networkImage : TImages.profilePicture; 
                        
                        return controller.imageUploading.value 
                          ? const TShimmerEffect(width: 50, height: 50, radius: 50,)
                          : TCircularImage(image: profilePicture, isNetworkImage: networkImage.isNotEmpty, size: 50, fit: BoxFit.cover, padding: 0, );
                        }
                    ),
                    const SizedBox(height: TSizes.defaultGap,),
                    TextButton(onPressed: () => controller.uploadProfileImage(), child: Text('Change Profile Picture'))
                  ],
                ),
              ),
          
              const SizedBox(height: TSizes.sectionGap,),
              const Divider(),
          
              const SizedBox(height: TSizes.sectionGap,),
              const TSectionHeader(title: 'User Information'),
              const SizedBox(height: TSizes.defaultGap,),

              // User ID
              TProfileMenu(title: 'User ID', value: controller.user.value.id, icon: Iconsax.copy, onTap: () {  },),

              // Username
              TProfileMenu(title: 'Username', value: controller.user.value.username, onTap: () { 
                updateController.username.text = controller.user.value.username;
                  Get.to(() => UpdateFieldScreen(
                      title: 'Username',
                      controller: updateController.username,
                      validator: (value) => TValidator.validateUsername(value),
                      onSave: (value) async => 
                        await updateController.updateSingleField('username', value)));
              },),

              // Name
              TProfileMenu(title: 'Name', value: controller.user.value.name, onTap: () {
                updateController.name.text = controller.user.value.name;
                  Get.to(() => UpdateFieldScreen(
                      title: 'Name',
                      controller: updateController.name,
                      validator: (value) =>
                          TValidator.validateEmptyField('Name', value),
                      onSave: (value) async =>
                          await updateController.updateSingleField('name', value)));
              },),

              // Email
              TProfileMenu(title: 'Email', value: controller.user.value.email, onTap: () => {

              },),

              // Phone Number
              TProfileMenu(title: 'Phone Number', value: controller.user.value.phoneNumber, onTap: () {
                updateController.phoneNumber.text = controller.user.value.phoneNumber;
                  Get.to(() => UpdateFieldScreen(
                      title: 'Phone Number',
                      controller: updateController.phoneNumber,
                      validator: (value) =>
                          TValidator.validatePhoneNumber(value),
                      onSave: (value) async => 
                          await updateController.updateSingleField('phoneNumber', value)));
              },),

              // Gender
              TProfileMenu(title: 'Gender', value: 'Female', onTap: () {  },),

              // DOB
              TProfileMenu(title: 'Date of Birth', value: '01 May, 2005', onTap: () {  },),
          
              const SizedBox(height: TSizes.sectionGap,),
              const Divider(),

              const SizedBox(height: TSizes.sectionGap,),
              const TSectionHeader(title: 'Password Security'),
          
              const SizedBox(height: TSizes.defaultGap,),
              TProfileMenu(title: 'Password', value: 'ooooooo', onTap: () {  },),

              const SizedBox(height: TSizes.sectionGap,),
              const Divider(),
          
              const SizedBox(height: TSizes.sectionGap,),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Delete Account',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: TColors.errorRed),
                    )),
              ),
              const SizedBox(height: TSizes.defaultGap,),
            ],
          ),
        ),
      ),
    );
  }
}