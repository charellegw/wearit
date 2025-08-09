import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/components/widgets/pages/status_page.dart';
import 'package:wearit/features/auth/screens/login/login.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/constants/text_string.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.bigSectionGap),
      child: Form(child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.username,
            ),
          ),

          const SizedBox(height: TSizes.textFieldGap,),
          
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.email,
            ),
          ),
      
          const SizedBox(height: TSizes.textFieldGap,),
          
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.phoneNumber,
            ),
          ),
      
          const SizedBox(height: TSizes.textFieldGap,),
          
          TextFormField(
            selectionHeightStyle: BoxHeightStyle.tight,
            decoration: const InputDecoration(
              labelText: TTexts.password,
              suffixIcon: Icon(Icons.visibility, size: TSizes.iconXs,),
            ),
          ),
      
          const SizedBox(height: TSizes.textFieldGap,),
          
          TextFormField(
            selectionHeightStyle: BoxHeightStyle.tight,
            decoration: const InputDecoration(
              labelText: TTexts.confirmPassword,
              suffixIcon: Icon(Icons.visibility, size: TSizes.iconXs,),
            ),
          ),
      
          const SizedBox(height: TSizes.xs,),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Transform.scale(
                scale: 0.8,
                child: Checkbox(value: true, onChanged: (value){},)
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: '${TTexts.iAgreeTo} ', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textSecondary)),
                    TextSpan(text: TTexts.privacyPolicy, style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.primaryColor, decoration: TextDecoration.underline, decorationColor: TColors.primaryColor, fontWeight: FontWeight.w600)),
                    TextSpan(text: ' ${TTexts.and} ', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textSecondary)),
                    TextSpan(text: TTexts.termsOfUse, style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.primaryColor, decoration: TextDecoration.underline, decorationColor: TColors.primaryColor, fontWeight: FontWeight.w600)),
                  ]
                )
              ),
            ],
          ),
    
          const SizedBox(height: TSizes.sectionGap,),
    
          SizedBox(
            width: double.infinity,
            height: TSizes.buttonHeight,
            child: ElevatedButton(
              onPressed: () => Get.to(() => 
              TStatusPage(imagePath: TImages.emailSent, title: TTexts.verifyEmailTitle, subtitle: TTexts.verifyEmailSubtitle, appBarButtonVisibility: true, primaryButtonText: TTexts.continueButton, onPrimaryPressed: () => Get.to(() => 
                TStatusPage(imagePath: TImages.createAccountSuccess, title: TTexts.signupSuccessTitle, subtitle: TTexts.signUpSuccessSubtitle, appBarButtonVisibility: false, primaryButtonText: TTexts.continueButton, onPrimaryPressed: () => Get.offAll(() => LoginScreen())), preventDuplicates: false), 
                secondaryButtonText: TTexts.resendEmailButton, onSecondaryPressed: (){}, highlightText: "user@example.com")), 
              child: Text(TTexts.createAccountButton, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),),
            ),
          ),
        ],
      )),
    );
  }
}