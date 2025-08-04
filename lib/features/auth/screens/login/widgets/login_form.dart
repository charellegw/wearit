import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/constants/text_string.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
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
                  Transform.scale(
                    scale: 0.8,
                    child: Checkbox(value: true, onChanged: (value){},)
                  ),
                  Text(
                    TTexts.rememberMe, 
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.textSecondary),
                  ),
                ],
              ),
              
              TextButton(
                onPressed: (){}, 
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
                  onPressed: (){}, 
                  child: Text(TTexts.loginButton, style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),),
                ),
              ),
              const SizedBox(height: TSizes.buttonGap,),
              SizedBox(
                width: double.infinity,
                height: TSizes.buttonHeight,
                child: ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    foregroundColor: isDark ? TColors.textWhite : TColors.textPrimary,
                    backgroundColor: isDark ? TColors.buttonSecondaryDark : TColors.buttonSecondary,
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