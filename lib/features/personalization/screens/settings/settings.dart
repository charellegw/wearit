import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/headers/app_header.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/list_tiles/settings_menu_tile.dart';
import 'package:wearit/components/widgets/list_tiles/user_profile_tile.dart';
import 'package:wearit/features/auth/screens/login/login.dart';
import 'package:wearit/features/personalization/screens/address/address.dart';
import 'package:wearit/features/personalization/screens/profile/profile.dart';
import 'package:wearit/features/store/screens/cart/cart.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TAppHeader(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              color: darkMode
                                  ? TColors.textPrimary
                                  : TColors.textWhite,
                              fontWeight: FontWeight.w600),
                    ),
                  ),
                  TUserProfileTile(trailingOnPressed: () => Get.to(() => const ProfileScreen()),),
                  const SizedBox( height: TSizes.bigSectionGap, ), 
                ],
              ),
            ),

            Padding(
              padding: TSpacingStyle.paddingDefault,
              child: Column(
                children: [
                  TSectionHeader(title: 'Account Settings'),
                  const SizedBox( height: TSizes.sectionGap, ),

                  TSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subtitle: 'Set the delivery address', onTap: () => Get.to(() => const AddressScreen()),),
                  TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subtitle: 'Add, edit, checkout, remove products', onTap: () => Get.to(() => const CartScreen()),),
                  TSettingsMenuTile(icon: Iconsax.receipt, title: 'My Orders', subtitle: 'Check order progress and history of order'),
                  TSettingsMenuTile(icon: Iconsax.wallet, title: 'Payment Methods', subtitle: 'Set payment methods'),
                  TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'Voucher Coupons', subtitle: 'List of all the voucher coupons'),
                  TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'Voucher Coupons', subtitle: 'Set any kind of notification message notification'),
                  TSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and connected accounts'),
                  const SizedBox( height: TSizes.sectionGap, ),

                  TSectionHeader(title: 'Application Settings'),
                  const SizedBox( height: TSizes.sectionGap, ),
                  TSettingsMenuTile(icon: Iconsax.moon, title: 'Dark mode', subtitle: 'Set the application appereance'),
                  TSettingsMenuTile(icon: Iconsax.image, title: 'Data Saver', subtitle: 'Reduce your data consumption when using cellular data. Images may be at lower resolution.', trailing: Switch(value: false, onChanged: (value) {}),),
                  TSettingsMenuTile(icon: Iconsax.location, title: 'Location Permission', subtitle: 'Allow to access your location', trailing: Switch(value: true, onChanged: (value) {}),),
                  TSettingsMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subtitle: 'Search result is safe for all ages', trailing: Switch(value: false, onChanged: (value) {}),),
                  TSettingsMenuTile(icon: Iconsax.image, title: 'Data Saver', subtitle: 'Reduce your data consumption when using cellular data. Images may be at lower resolution.', trailing: Switch(value: false, onChanged: (value) {}),),
                  
                  const SizedBox( height: TSizes.sectionGap, ),
                  SizedBox(
                    width: double.infinity,
                    height: TSizes.buttonHeight,
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const LoginScreen()),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: darkMode 
                          ? TColors.textWhite 
                          : TColors.textPrimary,
                        backgroundColor: darkMode
                          ? TColors.backgroundDark
                          : TColors.buttonSecondary,
                      ),
                      child: Text(
                        'Logout',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  const SizedBox( height: TSizes.sectionGap, ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}