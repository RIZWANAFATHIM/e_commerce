import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products_.cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/image_strings.dart';

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
          TCartCounterIcon(onPressed: () {},),
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
                          return GestureDetector(
                            onTap: (){},
                            child: TRoundedContainer(
                                  padding: const EdgeInsets.all(TSizes.sm),
                                  showBorder: true,
                                  backgroundColor: Colors.transparent,
                                  child: Row(
                                    children: [
                                      ///--icon
                                      Flexible(
                                        child: TCircularImage(
                                        isNetworkImage: false,
                                        image: TImages.nikeIcon,
                                        backgroundColor: Colors.transparent,
                                        overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
                                      ),
                                      ),
                                      const SizedBox(width: TSizes.spaceBtwItems / 2),

                                      ///--text
                                      Expanded(
                                        child:Column(
                                          mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large),
                                          Text('256 products with asjoso sj',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context).textTheme.labelMedium,
                                          ),
                                        ],
                                      ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                        }),
                      ],
                    ),
                ),

                ///--tabs
                bottom: TabBar(
                  isScrollable: true,
                  indicatorColor: TColors.primary,
                  unselectedLabelColor: TColors.darkGrey,
                  labelColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.primary,
                  tabs: const [
                  Tab(child: Text("Sports")),
                  Tab(child: Text("Furniture")),
                  Tab(child: Text("Electronics")),
                  Tab(child: Text("Clothes")),
                  Tab(child: Text("Cosmetics")),
                ],
                ),
              ),
            ];
          },
          ///--body
          body: Container()),
      ),
      );
  }
}

