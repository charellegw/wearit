import 'package:flutter/material.dart';
import 'package:wearit/common/widgets/social_buttons.dart';
import 'package:wearit/common/widgets/text_divider.dart';
import 'package:wearit/common/widgets/text_header.dart';
import 'package:wearit/features/auth/screens/signup/widgets/signup_form.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/constants/text_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: TSizes.defaultGap,
            left: TSizes.screenHorizontal,
            right: TSizes.screenHorizontal,
            bottom: TSizes.screenHorizontal,),
          child: Column(
            children: [
              TextHeader(headerTitle: TTexts.signupTitle, headerSubtitle: TTexts.signupSubtitle),
              SignupForm(),
              TextDivider(dividerText: TTexts.orSignUpWith),
              SocialButtons(),
            ],
          ),
        ),
      )
    );
  }
}