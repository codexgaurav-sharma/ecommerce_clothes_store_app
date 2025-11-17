import 'package:clothes_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:clothes_app/common/widgets/layouts/grid_layout.dart';
import 'package:clothes_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:clothes_app/common/widgets/texts/section_heading.dart';
import 'package:clothes_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:clothes_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:clothes_app/features/shop/screens/home/widgets/home_popular_category.dart';
import 'package:clothes_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:clothes_app/utils/constants/image_strings.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GPrimaryHeaderContainer(
              child: Column(
                children: [
                  const HomeAppBar(),
                  const SizedBox(height: GSize.spaceBtwSections),

                  const GSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: GSize.spaceBtwSections),

                  const CategoryWidget(),
                  const SizedBox(height: GSize.spaceBtwSections),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(GSize.defaultSpace),
              child: Column(
                children: [
                  GPromoSlider(
                    banners: [
                      GImages.homeBannerImage1,
                      GImages.homeBannerImage2,
                      GImages.homeBannerImage3,
                    ],
                  ),
                  const SizedBox(height: GSize.spaceBtwSections),

                  SectionHeading(title: 'Popular Products', showActionButton: true, buttonTitle: 'view all', onPressed: (){},),
                  const SizedBox(height: GSize.spaceBtwItems),
                  GGridLayout(itemBuilder: (_, index) => GProductCardVertical(), itemCount: 8,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
