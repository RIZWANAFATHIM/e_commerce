import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/image_strings.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                      image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              ///form
               Form(child:
               Column(
                children: [
                  ///email
                  TextFormField(
                    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: TTexts.email),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  ///password
                  TextFormField(
                    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check),
                        labelText: TTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash)),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields / 2),

                  ///remember me & forget password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///remember me
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value){}),
                          const Text(TTexts.rememberMe),
                        ],
                      ),

                      ///forget pwd
                      TextButton(onPressed: () {},
                          child: const Text(TTexts.forgetPassword)),
                    ],
                  ),

                  ///sign in button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(TTexts.signIn))),



                ///create account button
                  SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () {}, child: const Text(TTexts.createAccount))),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
