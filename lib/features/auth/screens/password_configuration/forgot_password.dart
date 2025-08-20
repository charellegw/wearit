import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/components/widgets/pages/status_page.dart';
import 'package:wearit/components/widgets/headers/text_header.dart';
import 'package:wearit/features/auth/screens/login/login.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/constants/text_string.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(
            top: TSizes.defaultGap,
            left: TSizes.horizontalPadding,
            right: TSizes.horizontalPadding,
            bottom: TSizes.horizontalPadding,
          ),
          child: Column(
            children: [
              TextHeader(headerTitle: TTexts.forgotPasswordTitle, headerSubtitle: TTexts.forgotPasswordSubtittle),
              
              const SizedBox(height: TSizes.bigSectionGap,),
              Form(
                child: TextField(
                  selectionHeightStyle: BoxHeightStyle.tight,
                  decoration: const InputDecoration(
                    labelText: TTexts.email,
                  ),
                ),
              ),
              
              const SizedBox(height: TSizes.bigSectionGap,),
              SizedBox(
                width: double.infinity,
                height: TSizes.buttonHeight,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => TStatusPage(imagePath: TImages.emailSent, title: TTexts.passwordResetEmailTitle, subtitle: TTexts.passwordResetEmailSubtitle, primaryButtonText: TTexts.continueButton, onPrimaryPressed: () => Get.offAll(() => LoginScreen()), appBarButtonVisibility: false, secondaryButtonText: TTexts.resendEmailButton, onSecondaryPressed: (){},)), 
                  child: Text(
                    TTexts.submitButton,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}
