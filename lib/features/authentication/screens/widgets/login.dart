import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets_login_signup/form_divider.dart';
import '../../../../common/widgets_login_signup/social_buttons.dart';
import 'login/login_form.dart';
import 'login/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo, title, subtitle
              const TLoginHeader(),
              ///form
               const TLoginForm(),

            ///divider
               TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              
              ///footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}




