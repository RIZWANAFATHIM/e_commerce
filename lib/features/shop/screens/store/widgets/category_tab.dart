import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    children: [
      Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          ///--Brands
          const TBrandShowCase(images: [TImages.productImage11, TImages.productImage50, TImages.productImage14],),
          const TBrandShowCase(images: [TImages.productImage11, TImages.productImage50, TImages.productImage14],),
          const SizedBox(height: TSizes.spaceBtwItems),

          /// --products
          TSectionHeading(title: 'You might like', onPressed: () {}),
          const SizedBox(height: TSizes.spaceBtwItems),
          
          TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
          const SizedBox(height: TSizes.spaceBtwSections),
        ],
      ),
      ),
    ],
    );
  }
}
