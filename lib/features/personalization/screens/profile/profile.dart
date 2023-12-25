import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      ///--body
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///profile pic
           SizedBox(
             width: double.infinity,
           child: Column(
              children: [
                const TCircularImage(image: TImages.user, width: 80, height: 80),
                TextButton(onPressed: () {}, child: const Text('Change Profile Picture')),
              ],
            ),
            ),

            ///--details
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            ///--heading profile info
            const TSectionHeading(title: 'Profile Information', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileMenu(title: 'Name', value: 'Rizwana Zakir', onPressed: () {}),
            TProfileMenu(title: 'Username', value: 'Rizzz_07', onPressed: () {}),

            const SizedBox(height: TSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            ///---heading personal info
            const TSectionHeading(title: 'Personal Information', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileMenu(title: 'User ID', value: '20147',icon: Iconsax.copy, onPressed: () {}),
            TProfileMenu(title: 'E-mail', value: 'rizwanazakir21@gmail', onPressed: () {}),
            TProfileMenu(title: 'Phone Number', value: '+91 9400951541', onPressed: () {}),
            TProfileMenu(title: 'Gender', value: 'Female', onPressed: () {}),
            TProfileMenu(title: 'Date of Birth', value: '14 Jan 2002', onPressed: () {}),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            Center(
              child: TextButton(
                  onPressed: () {},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red)),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}

