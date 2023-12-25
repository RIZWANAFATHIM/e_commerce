import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products_.cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
                expandedHeight: 440,

                flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        ///---search bar
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const TSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        ///---featured brands
                        TSectionHeading(title: 'Featured Brands', showActionButton: true, onPressed: () {}),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                        
                        TGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                          return const TBrandCard(showBorder: false);
                        }),
                      ],
                    ),
                ),

                ///--tabs
                bottom:  const TTabBar(
                  tabs: [
                    Tab(text: "Sports"),
                    Tab(text: "Furniture"),
                    Tab(text: "Electronics"),
                    Tab(text: "Clothes"),
                    Tab(text: "Cosmetics"),
                  ],
                ),
              ),
            ];
          },
          ///--body
          body: const TabBarView(
              children: [TCategoryTab(), TCategoryTab(), TCategoryTab(), TCategoryTab(), TCategoryTab(),
              ],
          )),
      ),
      );
  }
}



