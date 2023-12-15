import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header
            const TPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///-- appbar
                 THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///-- searchbar
                 TSearchContainer(text: 'Search in Store'),
                 SizedBox(height: TSizes.spaceBtwSections),

                  ///-- categories
                  Padding(
                      padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [

                        ///--heading
                       TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white),
                       SizedBox(height: TSizes.spaceBtwItems),

                        ///categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
            child: TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3],),
            ),
          ],
        ),
      ),
    );
  }
}











