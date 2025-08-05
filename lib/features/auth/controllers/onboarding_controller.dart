import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:wearit/features/auth/screens/login/login.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }
  
  void nextPage() {
    if(currentPageIndex.value == 2){
      Get.to(LoginScreen());
    } else {
      int index = currentPageIndex.value + 1;
      pageController.jumpToPage(index);
    }
  }
  
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

  String nextButtonText() {
    if(currentPageIndex.value == 2){
      return "Start";
    } else {
      return "Next";
    }
  }
}