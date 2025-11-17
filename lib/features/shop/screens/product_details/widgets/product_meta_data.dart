import 'package:clothes_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:clothes_app/common/widgets/texts/brand_title_text_with_verify_icon.dart';
import 'package:clothes_app/common/widgets/texts/product_price_text.dart';
import 'package:clothes_app/common/widgets/texts/product_title_text.dart';
import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/enums.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            GRoundedContainer(
              radius: 3,
              backgroundColor: GColors.secondary.withValues(alpha: 0.8),
              padding: const EdgeInsets.symmetric(horizontal: GSize.sm),
              child: Text(
                '25%',
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: GColors.black),
              ),
            ),
            const SizedBox(width: GSize.spaceBtwItems),
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: GSize.spaceBtwItems),
            const ProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: GSize.spaceBtwItems / 1.5),

        ProductTitleText(title: 'Nike - Phantom Green Shoes'),
        const SizedBox(height: GSize.spaceBtwItems / 1.5),

        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(width: GSize.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: GSize.spaceBtwItems),

        Row(
          children: [
            // GCircularImage(image: GImages.googleLogo, height: 32, width: 32,),
            BrandTitleTextWithVerifyIcon(
              title: 'Nike',
              brandTextSizes: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
