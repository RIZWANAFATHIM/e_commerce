import 'package:e_commerce/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({
    super.key
  });

  @override
  Widget build(BuildContext context) {
  final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price & sale price
        Row(
          children: [
            ///sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            
            ///price
            Text('\$3000', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: '2700', isLarge: true)
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        ///title
        const TProductTitleText(title: 'Nike White Sports Shoes'),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        ///stack status
         Row(
          children: [
        const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('IN Stock', style: Theme.of(context).textTheme.titleMedium),
        ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        ///brand
        Row(
          children: [
            TCircularImage(
                image: TImages.nikeIcon,
                width: 34,
              height: 34,
              overlayColor: darkMode ? TColors.white : TColors.black,
            ),
        const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium),
        ],
       ),

      ],
    );
  }
}
