import 'package:flutter/material.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/dividers/text_divider.dart';
import 'package:wearit/features/auth/screens/login/widgets/login_form.dart';
import 'package:wearit/components/widgets/headers/text_header.dart';
import 'package:wearit/components/widgets/buttons/social_buttons.dart';
import 'package:wearit/utils/constants/text_string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TextHeader(headerTitle: TTexts.loginTitle, headerSubtitle: TTexts.loginSubtitle),
              LoginForm(),
              TextDivider(dividerText: TTexts.orSignInWith),
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
