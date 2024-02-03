import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ///Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Subtotal" , style: Theme.of(context).textTheme.bodyMedium),
            Text("\$256.0" , style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems /2,),

        ///Shipping charges okke
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee" , style: Theme.of(context).textTheme.bodyMedium),
            Text("\$6.0" , style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems /2,),


        ///Gst
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("GST" , style: Theme.of(context).textTheme.bodyMedium),
            Text("\$1.0" , style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems /2,),


        ///Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total" , style: Theme.of(context).textTheme.bodyMedium),
            Text("\$256.0" , style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
      ],
    );
  }
}