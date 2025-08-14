import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:wearit/features/auth/screens/login/login.dart';
// import 'package:wearit/features/auth/screens/onboarding/onboarding.dart';
import 'package:wearit/features/store/screens/product_details/product_details.dart';
// import 'package:wearit/navigation_menu.dart';
import 'package:wearit/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.darkTheme,
      darkTheme: TAppTheme.darkTheme,
      // home: const OnboardingScreen(),
      // home: const ProductDetailsScreen(),
      // home: const NavigationMenu(),
      // home: const LoginScreen(),
      home: const Scaffold(
        backgroundColor: Colors.black54,
        body: Center(
          child: CircularProgressIndicator(color: Colors.white,),
        ),
      ),
    );
  }
}
