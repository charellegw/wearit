import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/features/auth/controllers/login/login_controller.dart';
import 'package:wearit/features/auth/screens/password_configuration/forgot_password.dart';
import 'package:wearit/features/auth/screens/signup/signup.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/constants/text_string.dart';
import 'package:wearit/utils/helpers/helper.dart';
import 'package:wearit/utils/validators/validator.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    final controller = Get.put(LoginController());

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.bigSectionGap),
      child: Form(
        key: controller.loginFormKey,
        child: Column(
        children: [
          TextFormField(
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: TTexts.email,
            ),
          ),
      
          const SizedBox(height: TSizes.textFieldGap,),
          
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => TValidator.validateEmptyField('Password', value),
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
      
          const SizedBox(height: TSizes.md,),
      
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
                    child: Obx(
                      () => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value,
                      ),
                    )
                  ),

                  const SizedBox(width: TSizes.textGap),

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
                  onPressed: () => controller.emailandPasswordLogin(), 
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
                    foregroundColor: darkMode ? TColors.textWhite : TColors.textPrimary,
                    backgroundColor: darkMode ? TColors.backgroundDark : TColors.buttonSecondary,
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