import 'package:e_commerce/common/widgets_login_signup/login_signup/form_divider.dart';
import 'package:e_commerce/common/widgets_login_signup/login_signup/social_buttons.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///title
            Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwSections),


            ///form
            const TSignupForm(),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///divider
            TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
            const SizedBox(height: TSizes.spaceBtwSections),


            ///social buttons
            const TSocialButtons(),
            
          ],
        ),
        ),
      ),
    );
  }
}

