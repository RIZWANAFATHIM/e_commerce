import 'package:e_commerce/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';


class SubCategory extends StatelessWidget {
  const SubCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text("Sports Shirts"), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const TRoundedImage( width: double.infinity, imageUrl: TImages.promoBanner2, height: null , applyImageRadius: true,),
               const SizedBox(height: TSizes.spaceBtwSections),

              /// Sub-Category
              Column(
                children: [
                  /// Heading
                  TSectionHeading(title: "Sports Shirts", onPressed: () {}),
                  const SizedBox(height: TSizes.defaultSpace / 2),

                    const TProductCardHorizontal(),

                ],
              ),
            ],
          ),),
      ),

    );
  }
}