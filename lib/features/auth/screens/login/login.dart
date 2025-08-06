import 'package:flutter/material.dart';
import 'package:wearit/common/styles/spacing_style.dart';
import 'package:wearit/common/widgets/text_divider.dart';
import 'package:wearit/features/auth/screens/login/widgets/login_form.dart';
import 'package:wearit/common/widgets/text_header.dart';
import 'package:wearit/common/widgets/social_buttons.dart';
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
