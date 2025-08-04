import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:wearit/features/auth/screens/login/login.dart';
import 'package:wearit/features/auth/screens/onboarding/onboarding.dart';
import 'package:wearit/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
