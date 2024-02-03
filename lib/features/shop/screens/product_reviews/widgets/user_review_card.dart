
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar( backgroundImage: AssetImage(TImages.user),),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text("Amal Antony" , style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),

            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        ///Review

        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            const SizedBox(width:  TSizes.spaceBtwItems,),
            Text("23 Dec 2023 " , style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        ReadMoreText("The user interface was quite awesome good work sanal you can do more like this",
          trimLines: 2,trimExpandedText: "Show Less", trimCollapsedText: "Show More",trimMode: TrimMode.Line,
          moreStyle: const TextStyle(fontSize: 14 , fontWeight: FontWeight.bold , color: TColors.primary),
          lessStyle: const TextStyle(fontSize: 14 , fontWeight: FontWeight.bold , color: TColors.primary),
        ),

        ///Company Reply
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey :TColors.grey,
          child: Padding(padding:
          const EdgeInsets.all(TSizes.md),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(" Luxify" , style: Theme.of(context).textTheme.titleMedium,),
                      Text(" 24 Dec 2023" , style: Theme.of(context).textTheme.bodyMedium,),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const ReadMoreText(
                    "The user interface was quite awesome good work rizwana you can do more like this",
                    trimLines: 2,
                    trimExpandedText: "Show Less",
                    trimCollapsedText: "Show More",
                    trimMode: TrimMode.Line,
                    moreStyle: TextStyle(fontSize: 14 , fontWeight: FontWeight.bold , color: TColors.primary),
                    lessStyle: TextStyle(fontSize: 14 , fontWeight: FontWeight.bold , color: TColors.primary),
                  ),
                ],
              )
          ),
        ),
      ],
    );
  }
}