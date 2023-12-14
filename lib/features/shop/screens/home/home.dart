import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header
            TPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///-- appbar
                 const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///-- searchbar
                 const TSearchContainer(text: 'Search in Store'),
                 const SizedBox(height: TSizes.spaceBtwSections),
                  
                  ///-- categories
                  Padding(
                      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [

                        ///--heading
                       const TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white),
                       const SizedBox(height: TSizes.spaceBtwItems),

                        ///categories
                        const THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}









