import 'package:flutter/material.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class BillingAddress extends StatelessWidget {
  const BillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: "Shipping Address" , buttonTitle: "Change" , onPressed: (){},),
        Text("Rizwana Zakir" , style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.phone , color: Colors.grey , size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text("9400951541", style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_city , color: Colors.grey , size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Expanded(child: Text("Thazhathuruthil (H), Vandiperiyar, Idukki", style: Theme.of(context).textTheme.bodyMedium,softWrap: true,)),
          ],
        ),
      ],
    );
  }
}