import 'package:clothes_app/common/widgets/layouts/grid_layout.dart';
import 'package:clothes_app/common/widgets/products/brands/brand_showcase.dart';
import 'package:clothes_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:clothes_app/common/widgets/texts/section_heading.dart';
import 'package:clothes_app/utils/constants/image_strings.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(GSize.defaultSpace),
          child: Column(
            children: [
              GBrandShowcase(
                images: [
                  GImages.productImage1,
                  GImages.productImage1,
                  GImages.productImage1,
                ],
              ),

              SectionHeading(title: "You might like", onPressed: () {}),
              const SizedBox(height: GSize.spaceBtwItems),
              GGridLayout(
                itemBuilder: (_, index) => const GProductCardVertical(),
                itemCount: 4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
