import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/features/auth/screens/password_configuration/forgot_password.dart';
import 'package:wearit/features/auth/screens/signup/signup.dart';
import 'package:wearit/navigation_menu.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/constants/text_string.dart';
import 'package:wearit/utils/helpers/helper.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelper.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.bigSectionGap),
      child: Form(child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.email,
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
      
          const SizedBox(height: TSizes.xs,),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Checkbox(
                      value: false,
                      onChanged: (value) {},
                    )
                  ),
                  Text(
                    TTexts.rememberMe, 
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.textSecondary),
                  ),
                ],
              ),
              
              TextButton(
                onPressed: () => Get.to(() => ForgotPasswordScreen()), 
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(TSizes.sm),
                  minimumSize: Size(0, 0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  TTexts.forgetPassword,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.textSecondary),
                )
              ),
            ],
          ),
    
          const SizedBox(height: TSizes.sectionGap,),
    
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: TSizes.buttonHeight,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => NavigationMenu()), 
                  child: Text(TTexts.loginButton, style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),),
                ),
              ),
              const SizedBox(height: TSizes.buttonGap,),
              SizedBox(
                width: double.infinity,
                height: TSizes.buttonHeight,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const SignupScreen()), 
                  style: ElevatedButton.styleFrom(
                    foregroundColor: isDark ? TColors.textWhite : TColors.textPrimary,
                    backgroundColor: isDark ? TColors.backgroundDark : TColors.buttonSecondary,
                  ),
                  child: Text(TTexts.createAccountButton, style: Theme.of(context).textTheme.bodyLarge,),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}