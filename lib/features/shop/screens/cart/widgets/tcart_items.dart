import 'package:flutter/material.dart';
import '../../../../../common/widgets/products/cart/add_remove_button_cart.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';


class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key, required this.showAddRemoveButtons,
  });
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(separatorBuilder: (_,__) => const SizedBox(height: TSizes.spaceBtwSections,),
      shrinkWrap: true ,
      itemCount: 4 ,
      itemBuilder:(_, index) => Column(
        children:[
          ///Cart iTems
          const CartItem(),
          if(showAddRemoveButtons)
            const SizedBox(height: TSizes.spaceBtwItems,),

          ///add or remove ...
          if(showAddRemoveButtons)
            const Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width:70 ,),


                    ///Add and remove button
                    ProductQualityWithAddandRemove(),
                  ],
                ),
                SizedBox(width:120 ,),

                ///price
                TProductPriceText(price: "256")




              ],
            ),

        ],
      )
      ,);
  }
}