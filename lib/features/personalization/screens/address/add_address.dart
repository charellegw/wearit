import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        backButtonVisibility: true,
        title: Text('Add New Address', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600), ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingDefault,
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: 'Recipient\'s Name'),
                ),
                const SizedBox(height: TSizes.textFieldGap,),
                
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.call),
                      labelText: 'Phone Number'),
                ),
                const SizedBox(height: TSizes.textFieldGap,),

                TextFormField(
                  minLines: 1,
                  maxLines: null,
                  expands: false,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.house_2),
                      labelText: 'Street'),
                ),
                const SizedBox(height: TSizes.sectionGap,),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: 'City'),
                      ),
                    ),
                    const SizedBox(width: TSizes.textFieldGap,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.location),
                            labelText: 'State'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.textFieldGap,),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.global),
                            labelText: 'Country'),
                      ),
                    ),
                    const SizedBox(width: TSizes.textFieldGap,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.code),
                            labelText: 'Postal Code'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.textFieldGap,),


                SizedBox(
                width: double.infinity,
                height: TSizes.buttonHeight,
                child: ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: TColors.buttonPrimary,
                  ),
                  child: Text('Save', style: Theme.of(context).textTheme.bodyLarge,),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}