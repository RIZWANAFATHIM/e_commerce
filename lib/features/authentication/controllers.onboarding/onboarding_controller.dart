import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///variables

  ///update Current Index when page scroll
   void updatePageIndicator(index) {}


  /// jump to the specific dot selected page
   void dotNavigationClick(index) {}

  ///update curret index & jump to next page
  void nextPage() {}


  ///update curret index & jump to last page
  void skipPage () {}
}