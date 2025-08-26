import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/features/personalization/screens/address/add_address.dart';
import 'package:wearit/features/personalization/screens/address/widgets/address_item.dart';
import 'package:wearit/utils/constants/colors.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.to(() => const AddAddressScreen()),
          backgroundColor: TColors.primaryColor,
          child: const Icon(Iconsax.add, color: Colors.white,),
        ),
        appBar: TAppBar(
          backButtonVisibility: true,
          title: Text( 'My Addresses', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600), ),
        ),
        body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingDefault,
          child: Column(
            children: [
              AddressItem(selectedAddress: true,),
              AddressItem(),
            ],
          ),
        ),
        ),
    );
  }
}

