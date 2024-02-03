import 'package:e_commerce/features/shop/screens/cart/widgets/tcart_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';
import '../checkout/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text("Cart" ,style: Theme.of(context).textTheme.headlineSmall, ),showBackArrow: true,),
      body: const Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child:
        TCartItem(showAddRemoveButtons: true,),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()),child: const Text("Checkout \$256"),),
      ),

    );
  }
}


