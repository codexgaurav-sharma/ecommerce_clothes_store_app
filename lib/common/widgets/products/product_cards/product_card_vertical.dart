import 'package:clothes_app/common/styles/shadows.dart';
import 'package:clothes_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:clothes_app/common/widgets/icons/g_circular_icons.dart';
import 'package:clothes_app/common/widgets/images/g_rounded_images.dart';
import 'package:clothes_app/common/widgets/texts/brand_title_text_with_verify_icon.dart';
import 'package:clothes_app/common/widgets/texts/product_price_text.dart';
import 'package:clothes_app/common/widgets/texts/product_title_text.dart';
import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/image_strings.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GProductCardVertical extends StatelessWidget {
  const GProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [GShadows.verticalProductShadow],
          borderRadius: BorderRadius.circular(GSize.productImageRadius),
          color: dark ? GColors.darkerGrey : GColors.white,
        ),
        child: Column(
          children: [
            GRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(GSize.sm),
              backgroundColor: dark ? GColors.dark : GColors.light,
              child: Stack(
                children: [
                  GRoundedImage(
                    imageUrl: GImages.productImage1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 10,
                    child: GRoundedContainer(
                      radius: GSize.sm,
                      backgroundColor: GColors.secondary.withValues(alpha: 0.8),
                      padding: const EdgeInsets.symmetric(horizontal: GSize.sm),
                      child: Text(
                        '25%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: GColors.black),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: GCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: GSize.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: GSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTitleText(
                    title: "Tri Color Shirt",
                    smallSize: true,
                  ),
                  const SizedBox(height: GSize.spaceBtwItems / 2),
                  BrandTitleTextWithVerifyIcon(title: 'Nike'),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: GSize.sm),
                  child: ProductPriceText(price: "35.4", isLarge: true),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: GColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(GSize.cardRadiusMd),
                      bottomRight: Radius.circular(GSize.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: GSize.iconLg * 1.2,
                    height: GSize.iconLg * 1.2,
                    child: Center(
                      child: Icon(Iconsax.add, color: GColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

