import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
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
             //   crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///-- appbar
                 THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///-- searchbar
                 TSearchContainer(text: 'Search in Store', showBorder: false,),
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
              padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                ///---promo slider
                const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3]),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///---heading
                TSectionHeading(title: 'Popular Products', onPressed: () {}),
                const SizedBox(height: TSizes.spaceBtwItems),


                ///---popular products
                TGridLayout(itemCount: 2, itemBuilder: (_, index) => const TProductCardVertical()),
            ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}












