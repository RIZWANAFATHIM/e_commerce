import 'package:e_commerce/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../product_reviews/product_review.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product image slider
            const TProductImageSlider(),
            
            ///Product details
            Padding(
                padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                ///--Rating & Share button
                  TRatingAndShare(),

                  /// --Price, Title, Stack & Brand
                  TProductMetaData(),

                  ///--Attributes
                  TProductAttributes(),
                const SizedBox(height: TSizes.spaceBtwSections,),

                ///Checkout Button

                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: Text("Checkout"))),
                const SizedBox(height: TSizes.spaceBtwSections,),

                ///DESCRIPTION

                const  TSectionHeading(title: "Description" ,showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const ReadMoreText(
                  "A Light weight Flexible & Breathable Spider Web Mesh shoes with a 3D look gives an attractive appeal .Sock liner to give comfort and Synergy Outsole Rubber outsole is engineered in such a way that it gives maximum traction with minimum rubber component. Extended rubber part on side profile at heel area gives you great stability while running." , trimLength: 2 , trimMode: TrimMode.Line,trimCollapsedText: "Show More",
                  trimExpandedText: "Less",
                  moreStyle: const TextStyle(fontSize: 14 , fontWeight: FontWeight.w800),
                  lessStyle: const TextStyle(fontSize: 14 , fontWeight: FontWeight.w800) ,),

                ///Reviews
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  TSectionHeading(title: "Review(199" , onPressed: () {},showActionButton: false,),

                IconButton(onPressed: ()=> Get.to(()=> const ProductReviewsScreen()), icon: const Icon( Iconsax.arrow_right1 , size: 18,) ,),

                IconButton(onPressed: () {}, icon: const Icon( Iconsax.arrow_right1 , size: 18,) ,)

    ],
    ),

               const SizedBox(height: TSizes.spaceBtwSections,),

    ],
    ),
    ),
    ],
    ),
    ),
    );
  }
}