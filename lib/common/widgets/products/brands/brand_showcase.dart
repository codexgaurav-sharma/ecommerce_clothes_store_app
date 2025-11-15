import 'package:clothes_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:clothes_app/common/widgets/products/brands/brand_card.dart';
import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class GBrandShowcase extends StatelessWidget {
  const GBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return GRoundedContainer(
      showBorder: true,
      borderColor: GColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(GSize.md),
      margin: const EdgeInsets.only(bottom: GSize.spaceBtwItems),
      child: Column(
        children: [
          const GBrandCard(showBorder: false),
          const SizedBox(height: GSize.spaceBtwItems),
          Row(
            children: images
                .map((image) => brandTopProductImagesWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImagesWidget(String image, context) {
    final dark = GHelperFunction.isDarkMode(context);
    return Expanded(
      child: GRoundedContainer(
        height: 100,
        backgroundColor: dark ? GColors.darkGrey : GColors.light,
        margin: const EdgeInsets.only(right: GSize.sm),
        padding: const EdgeInsets.all(GSize.md),
        child: Image(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
