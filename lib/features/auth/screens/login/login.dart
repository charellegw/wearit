import 'package:flutter/material.dart';
import 'package:wearit/common/widgets/text_divider.dart';
import 'package:wearit/features/auth/screens/login/widgets/login_form.dart';
import 'package:wearit/features/auth/screens/login/widgets/login_header.dart';
import 'package:wearit/features/auth/screens/login/widgets/login_social.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/constants/text_string.dart';
import 'package:wearit/utils/helpers/helper.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelper.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: TSizes.appBarHeight,
            left: TSizes.screenHorizontal,
            right: TSizes.screenHorizontal,
            bottom: TSizes.defaultGap,
          ),
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(isDark: isDark),
              TextDivider(dividerText: TTexts.orSignInWith),
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
