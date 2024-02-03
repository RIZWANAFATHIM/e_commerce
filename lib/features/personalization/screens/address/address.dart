import 'package:e_commerce/features/personalization/screens/address/widgets/single_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:() => Get.to(() => const AddNewAddressScreen() ),
        backgroundColor: TColors.primary,
        child: const Icon(Iconsax.add , color: TColors.white,),),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Address", style: Theme.of(context).textTheme.labelMedium,),
      ),
      body: const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace) ,
          child: Column(
            children: [
              TSingleAddress(selectedaddress: true),
              TSingleAddress(selectedaddress: false),
            ],
          ) ,) ,
      ),
    );
  }
}