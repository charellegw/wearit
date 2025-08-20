import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/features/auth/controllers/signup/signup_controller.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/constants/text_string.dart';
import 'package:wearit/utils/validators/validator.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.bigSectionGap),
      child: Form(
        key: controller.signupFormKey,
        child: Column(
        children: [
          TextFormField(
            controller: controller.name,
            validator: (value) => TValidator.validateName(value),
            decoration: const InputDecoration(
              labelText: TTexts.name,
            ),
          ),

          const SizedBox(height: TSizes.textFieldGap,),

          TextFormField(
            controller: controller.username,
            validator: (value) => TValidator.validateUsername(value),
            
            decoration: const InputDecoration(
              labelText: TTexts.username,
            ),
          ),

          const SizedBox(height: TSizes.textFieldGap,),
          
          TextFormField(
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: TTexts.email,
            ),
          ),
      
          const SizedBox(height: TSizes.textFieldGap,),
          
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: TTexts.phoneNumber,
            ),
          ),
      
          const SizedBox(height: TSizes.textFieldGap,),
          
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => TValidator.validatePassword(value),
              obscureText: controller.showPassword.value,
              selectionHeightStyle: BoxHeightStyle.tight,
              decoration: InputDecoration(
                labelText: TTexts.password,
                suffixIcon: IconButton(
                  onPressed: () => controller.showPassword.value = !controller.showPassword.value,
                  icon: Icon(controller.showPassword.value ? Icons.visibility : Icons.visibility_off, size: TSizes.iconXs,),
                ),
              ),
            ),
          ),
      
          const SizedBox(height: TSizes.textFieldGap,),
          
          Obx(
            () => TextFormField(
              controller: controller.confirmPassword,
              validator: (value) => TValidator.validateConfirmPassword(value, controller.password.text),
              obscureText: controller.showPassword.value,
              selectionHeightStyle: BoxHeightStyle.tight,
              decoration: InputDecoration(
                labelText: TTexts.confirmPassword,
                suffixIcon: IconButton(
                  onPressed: () => controller.showPassword.value = !controller.showPassword.value,
                  icon: Icon(controller.showPassword.value ? Icons.visibility : Icons.visibility_off, size: TSizes.iconXs,),
                ),
              ),
            ),
          ),
      
          const SizedBox(height: TSizes.md,),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: Obx(() => Checkbox(
                  value: controller.privacyPolicy.value,
                  onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value,
                ))
              ),

              const SizedBox(width: TSizes.textGap),
              
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: '${TTexts.iAgreeTo} ', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textSecondary)),
                      TextSpan(text: TTexts.privacyPolicy, style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.primaryColor, decoration: TextDecoration.underline, decorationColor: TColors.primaryColor, fontWeight: FontWeight.w600)),
                      TextSpan(text: ' ${TTexts.and} ', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textSecondary)),
                      TextSpan(text: TTexts.termsOfUse, style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.primaryColor, decoration: TextDecoration.underline, decorationColor: TColors.primaryColor, fontWeight: FontWeight.w600)),
                    ]
                  )
                ),
              ),
            ],
          ),
    
          const SizedBox(height: TSizes.sectionGap,),
    
          SizedBox(
            width: double.infinity,
            height: TSizes.buttonHeight,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              // Get.to(() => 
              // TStatusPage(imagePath: TImages.emailSent, title: TTexts.verifyEmailTitle, subtitle: TTexts.verifyEmailSubtitle, appBarButtonVisibility: true, primaryButtonText: TTexts.continueButton, onPrimaryPressed: () => Get.to(() => 
              //   TStatusPage(imagePath: TImages.createAccountSuccess, title: TTexts.signupSuccessTitle, subtitle: TTexts.signUpSuccessSubtitle, appBarButtonVisibility: false, primaryButtonText: TTexts.continueButton, onPrimaryPressed: () => Get.offAll(() => LoginScreen())), preventDuplicates: false), 
              //   secondaryButtonText: TTexts.resendEmailButton, onSecondaryPressed: (){}, highlightText: "user@example.com")), 
              child: Text(TTexts.createAccountButton, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),),
            ),
          ),
        ],
      )),
    );
  }
}