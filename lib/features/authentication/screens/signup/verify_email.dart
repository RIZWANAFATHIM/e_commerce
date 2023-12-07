import 'package:e_commerce/common/widgets_login_signup/success_screen/success_screen.dart';
import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        //padding to give default equal space on all sides in all screens.
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///image
              Image(image: const AssetImage(TImages.deliveredEmailIllustration), width: THelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///title & subtitle
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text("support@UrChoice.com", style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen(
                image: TImages.staticSuccessIllustration,
                title: TTexts.yourAccountedCreatedTitle,
                subtitle: TTexts.yourAccountedCreatedSubTitle,
                onPressed: () => Get.to(() => const LoginScreen()),
              )),
                  child: const Text(TTexts.tContinue))),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(TTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
