import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/features/common/status/status_pages.dart';
import 'package:wearit/features/store/screens/cart/widgets/cart_list.dart';
import 'package:wearit/features/store/screens/checkout/widgets/address_details.dart';
import 'package:wearit/features/store/screens/checkout/widgets/billing_details.dart';
import 'package:wearit/features/store/screens/checkout/widgets/payment_method.dart';
import 'package:wearit/features/store/screens/checkout/widgets/voucher_input.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        backButtonVisibility: true,
        title: Text('Order Review', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingDefault,
          child: Column(
            children: [
              TCartList(showQuantityButtons: false, showQuantityLabel: true,),
              const SizedBox(height: TSizes.sectionGap,),
              
              TVoucherInput(),
              const SizedBox(height: TSizes.sectionGap,),

              TRoundedContainer(
                borderVisibility: true,
                borderColor: TColors.borderSecondary.withAlpha(120),
                radius: TSizes.md,
                padding: const EdgeInsets.all(TSizes.md),
                child: Column(
                  children: [
                    TBillingDetails(),

                    const SizedBox(height: TSizes.defaultGap/2,),
                    Divider(),
                    const SizedBox(height: TSizes.defaultGap/2,),

                    TPaymentMethod(),

                    const SizedBox(height: TSizes.defaultGap/2,),
                    Divider(),
                    const SizedBox(height: TSizes.defaultGap/2,),

                    TAddressDetails(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(TSizes.defaultGap),
        child: ElevatedButton(
              onPressed: () => Get.to(() => StatusPages.orderSuccess()),
              style: ElevatedButton.styleFrom( padding: EdgeInsets.all(TSizes.md)),
              child: Text('Confirm Order')),
      ),
    );
  }
}

