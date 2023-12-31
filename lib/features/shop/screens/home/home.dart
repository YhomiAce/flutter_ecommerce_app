// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/texts/section_header.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/primary_header_widget.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  HomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// -- SearchBar
                  SearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        SectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// Categories
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.banner3,
                      TImages.banner4,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  GridLayout(
                    itemCount: 8,
                    itemBuilder: (context, index) =>
                        const ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
