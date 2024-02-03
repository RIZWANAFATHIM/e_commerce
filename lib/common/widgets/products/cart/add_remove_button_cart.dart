import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/t_circular_icon.dart';

class ProductQualityWithAddandRemove extends StatelessWidget {
  const ProductQualityWithAddandRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          height: 32,
          width: 32,
          size: TSizes.md,
          color: THelperFunctions.isDarkMode(context) ? Colors.white : Colors.black,
          backgroundColor:THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        ),

        const SizedBox(width: TSizes.spaceBtwItems,),
        Text("2" , style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: TSizes.spaceBtwItems,),
        const TCircularIcon(
          icon:Iconsax.add,
          height: 32,
          width: 32,
          size: TSizes.md,
          color:  Colors.white,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}