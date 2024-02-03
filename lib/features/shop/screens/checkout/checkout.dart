import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_address-section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_amount.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../common/widgets/products/cart/coupon_widgets.dart';
import '../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../navigation_menu.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../cart/widgets/tcart_items.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(title: Text("Orders" ,style: Theme.of(context).textTheme.headlineSmall, ),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [

              ///  -------show the cart items
              const TCartItem(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Coupon , Offers
              const CouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Billing Section----
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    ///Pricing
                    BillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    ///Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    ///Payment and details
                    BillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    ///Address okke
                    BillingAddress(),
                  ],
                ),

              )
            ],
          ),),
      ),

      ///Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton
          (onPressed: () =>
            Get.to(() => SuccessScreen (
              image: TImages.payment_success,
              title: "",
              subtitle: "Your Item Will Shop Soon",
              onPressed: () => Get.to(()=> const NavigationMenu()),
            ),
            ),
          child: const Text("Checkout \$256"),),
      ),

    );
  }
}