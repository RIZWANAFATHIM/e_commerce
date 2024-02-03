import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedaddress});
  final bool selectedaddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      backgroundColor: selectedaddress? TColors.primary.withOpacity(0.5) :Colors.transparent  ,
      borderColor: selectedaddress? Colors.transparent : dark ? TColors.darkerGrey :TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedaddress ? Iconsax.tick_circle5 : null,

              color: selectedaddress ? dark ?
              TColors.light : TColors.dark: null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " Sanal ES",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSizes.sm /2,),
              const Text("9400951541" ,maxLines: 1, overflow: TextOverflow.ellipsis,),
              const SizedBox(height: TSizes.sm /2,),
              const Text(" Thazhathuruthil (H), Vandiperiyar, Idukki", softWrap: true,)

            ],
          )
        ],
      ),
    );
  }
}