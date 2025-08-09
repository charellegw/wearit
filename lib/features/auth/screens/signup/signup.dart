import 'package:flutter/material.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/buttons/social_buttons.dart';
import 'package:wearit/components/widgets/dividers/text_divider.dart';
import 'package:wearit/components/widgets/headers/text_header.dart';
import 'package:wearit/features/auth/screens/signup/widgets/signup_form.dart';
import 'package:wearit/utils/constants/text_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingDefault,
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