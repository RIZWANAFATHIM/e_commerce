import 'package:flutter/material.dart';
import '../../../../../common/widgets/chips/choice_chips.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(title: "Other Options", showActionButton: true,),
                  const SizedBox(width: TSizes.spaceBtwItems,),

                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [
                          const TProductTitleText(title: "Price: ", smallSize: true,),

                          /// To add the price
                          Text("\$125", style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),

                          const SizedBox(width: TSizes.spaceBtwItems,),

                          /// Sale Price
                          const TProductPriceText(price: "110" , lineThrough: true,),
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(title: "Stock" , smallSize: true,),
                          Text("\$125", style: Theme.of(context).textTheme.titleSmall),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              ///Descriptions ........

              const TProductTitleText(title: "Adidas sports shoes which cab used for ............",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        ///Attributes
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              const TSectionHeading(title: "Colors" , showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems /2,),
              Wrap(
                spacing: 8,
                children: [
                  ChoiceChips(text: "Green", selected: true, onSelected: (value) {},),
                  ChoiceChips(text: "Blue", selected: false, onSelected: (value) {},),
                  ChoiceChips(text: "Red", selected: false,onSelected:  (value) {} ,),
                ],
              )
            ]
        ),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              const TSectionHeading(title: "Sizes"),
              const SizedBox(height: TSizes.spaceBtwItems /2,),
              Wrap(
                spacing: 8,
                children: [
                  ChoiceChips(text: "8", selected: true,onSelected: (value) {},),
                  ChoiceChips(text: "9", selected: false,onSelected: (value) {},),
                  ChoiceChips(text: "10", selected: false,onSelected: (value) {},),
                ],
              )
            ]
        ),

      ],
    );
  }
}
