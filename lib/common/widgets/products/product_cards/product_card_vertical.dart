import 'package:e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/features/shop/screens/product_details/product_detail.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/t_circular_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
     child: Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        children: [
          ///---thumbnail, wishlist button, discount tag
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark? TColors.dark : TColors.light,
            child: Stack(
              children: [
                ///---thumbnail image
                const TRoundedImage(
            imageUrl: TImages.productImage12, applyImageRadius: true),

                ///---sale tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                  radius: TSizes.sm,
                  backgroundColor: TColors.secondary.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                  child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                ),
                ),

                ///---favourite icon button
                const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
              ],
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2),

          ///---details
          const Padding(
            padding: EdgeInsets.only(left: TSizes.sm),
            child: SizedBox(
              width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TProductTitleText(title: 'Nike Revolution White Shoes', smallSize: true),
                 SizedBox(height: TSizes.spaceBtwItems / 2),
                TBrandTitleWithVerifiedIcon(title: 'Nike'),
              ],
            ),
          ),
          ),


          const Spacer(),

          ///price row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Price
              const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: TProductPriceText(price: '40.0'),
     ),
              ///add to cart button
              Container(
                decoration: const BoxDecoration(
                  color: TColors.dark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(TSizes.cardRadiusMd),
                    bottomRight: Radius.circular(TSizes.productImageRadius),
                  ),
                ),
                child: const SizedBox(
                  width: TSizes.iconLg * 1.2,
                  height: TSizes.iconLg * 1.2,
                  child: Center(child: Icon(Iconsax.add, color: TColors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
     ),
    );
  }
}



