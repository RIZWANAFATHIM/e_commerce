import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///variables
   final pageController = PageController();
   Rx<int> currentPageIndex = 0.obs;

  ///update Current Index when page scroll
   void updatePageIndicator(index) => currentPageIndex.value = index;


  /// jump to the specific dot selected page
   void dotNavigationClick(index) {
     currentPageIndex.value = index;
     pageController.jumpTo(index);
   }

  ///update curret index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }


/*
  void nextPage() {
    print(currentPageIndex.value);
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen() as Widget Function());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(
        page,
        duration:
        const Duration(milliseconds: 300), // Adjust the duration as needed
        curve: Curves.easeInOut, // Adjust the animation curve if desired
      );
    }
  }
  */
  ///update curret index & jump to last page
  void skipPage () {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}