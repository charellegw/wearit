import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/images/circular_image.dart';
import 'package:wearit/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    TCircularImage(imagePath: TImages.profilePicture,),
                    const SizedBox(height: TSizes.defaultGap,),
                    TextButton(onPressed: () {}, child: Text('Change Profile Picture'))
                  ],
                ),
              ),
          
              const SizedBox(height: TSizes.sectionGap,),
              const Divider(),
          
              const SizedBox(height: TSizes.sectionGap,),
              const TSectionHeader(title: 'User Information'),
          
              const SizedBox(height: TSizes.defaultGap,),
              TProfileMenu(title: 'User ID', value: '23712', icon: Iconsax.copy, onTap: () {  },),
              TProfileMenu(title: 'Name', value: 'Charelle Winarto', onTap: () {  },),
              TProfileMenu(title: 'Email', value: 'charellewinarto@gmail.com', onTap: () {  },),
              TProfileMenu(title: 'Phone Number', value: '+62-8123-4567890', onTap: () {  },),
              TProfileMenu(title: 'Gender', value: 'Female', onTap: () {  },),
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

