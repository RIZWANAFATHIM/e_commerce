import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (_,__) => const SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder: (_ , index) => TRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// --row 1
            Row(
              children: [

                ///1 - icon
                const Icon(Iconsax.ship),
                const SizedBox(width: TSizes.spaceBtwItems / 2,),

                /// 2 - status and date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Processing" ,
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary , fontWeightDelta: 1),),
                      Text("1 Jan 2024" , style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),

                /// 3 - icon
                IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_34 , size: TSizes.iconSm,))
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),

            /// row - 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// 1 - icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: TSizes.spaceBtwItems / 2,),

                      /// 2 - status and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order" , style: Theme.of(context).textTheme.labelMedium),
                            Text("#241794" , style: Theme.of(context).textTheme.titleSmall,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      /// 1 - icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: TSizes.spaceBtwItems / 2,),

                      /// 2 - status and date okke
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shipping date" , style: Theme.of(context).textTheme.labelMedium),
                            Text("3-jan-2024" , style: Theme.of(context).textTheme.titleSmall,),
                          ],
                        ),
                      ),
                    ],
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