import 'package:e_commerce/common/widgets/list_tile/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/list_tile/settings_menu_tile.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../shop/screens/order/order.dart';
import '../address/address.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // to add header
          children: [
            TPrimaryHeaderContainer(
                child: Column(
                  children: [
                    TAppBar(
                      title: Text(
                        "Account",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: TColors.white),
                      ),
                    ),

                    //profile
                    TUserProfile(onPressed: () => Get.to(()=> const ProfileScreen()),),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                  ],
                )
            ),

            Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [

                  //Account Settings
                  const TSectionHeading(title: "Account Setting", showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  TSettingsMenuTile(icon: Iconsax.safe_home,
                    title: 'Addresses',
                    subTitle: "Set Delivery Address",
                    onTap: () => Get.to(()=> const UserAddressScreen()),
                  ),
                  TSettingsMenuTile(icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: "Checkout items added to cart",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(icon: Iconsax.bag_tick,
                    title: 'Orders',
                    subTitle: "Details of products you ordered",
                    onTap: ()  => Get.to(()=> const OrderScreen()),
                  ),
                  TSettingsMenuTile(icon: Iconsax.bank,
                    title: 'Payment Methods',
                    subTitle: "Linked payment methods , upi , bank etc",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(icon: Iconsax.discount_shape1,
                    title: "Coupons",
                    subTitle: "Coupons available for you",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: "Notifications for you",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(icon: Iconsax.setting,
                    title: 'Account Privacy',
                    subTitle: "Manage connected accounts",
                    onTap: () {},
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSectionHeading(title: "App Settings" ,showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  TSettingsMenuTile(icon: Iconsax.document_upload1, title: "Load Data", subTitle: "Cloudil add cheyyan olla data", onTap: () {}),

                  TSettingsMenuTile(icon: Iconsax.location,
                    title: "Location",
                    subTitle:"Set recommendations based on location",
                    trailing:Switch(value: true,onChanged: (value) {}),
                    onTap: (){},
                  ),

                  TSettingsMenuTile(icon: Iconsax.security_user1,
                    title: "Privacy Mode",
                    subTitle:"for 18+ lalala",
                    trailing:Switch(value: false,onChanged: (value) {}),
                    onTap: (){},
                  ),

                  TSettingsMenuTile(icon: Iconsax.image,
                    title: "Quality Settings",
                    subTitle:"Set image quality ",
                    trailing:Switch(value: true,onChanged: (value) {}),
                    onTap: (){},
                  ),

                  ///Logout

                  const SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(
                    width:double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text("Logout"),),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections*2.5,)

                ],
              ),)

          ],




        ),
      ),
    );
  }
}
