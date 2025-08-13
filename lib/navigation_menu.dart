import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/features/personalization/screens/settings/settings.dart';
import 'package:wearit/features/shop/screens/cart/cart.dart';
import 'package:wearit/features/shop/screens/home/home.dart';
import 'package:wearit/features/shop/screens/shop/shop.dart';
import 'package:wearit/features/shop/screens/wishlist/wishlist.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home, size: TSizes.navbarIcons,), selectedIcon: Icon(Iconsax.home_15, color: TColors.primaryColor, size: TSizes.navbarIcons), label: 'Home', ),
            NavigationDestination(icon: Icon(Iconsax.shop, size: TSizes.navbarIcons,), selectedIcon: Icon(Iconsax.shop5, color: TColors.primaryColor, size: TSizes.navbarIcons,), label: 'Shop'),
            NavigationDestination(icon: Icon(Iconsax.heart, size: TSizes.navbarIcons,), selectedIcon: Icon(Iconsax.heart5, color: TColors.primaryColor, size: TSizes.navbarIcons,), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.shopping_cart, size: TSizes.navbarIcons,), selectedIcon: Icon(Iconsax.shopping_cart5, color: TColors.primaryColor, size: TSizes.navbarIcons,), label: 'Cart'),
            NavigationDestination(icon: Icon(Iconsax.user, size: TSizes.navbarIcons,), selectedIcon: Icon(Iconsax.user4, color: TColors.primaryColor, size: TSizes.navbarIcons,), label: 'Account'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const ShopScreen(),
    const WishlistScreen(),
    const CartScreen(),
    const SettingsScreen(),
  ];
}
