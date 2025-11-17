import 'package:clothes_app/common/widgets/appbar/appbar.dart';
import 'package:clothes_app/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:clothes_app/common/widgets/icons/g_circular_icons.dart';
import 'package:clothes_app/common/widgets/images/g_rounded_images.dart';
import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/image_strings.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GProductImageSlider extends StatelessWidget {
  const GProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);

    return GCurvedEdgeWidget(
      child: Container(
        color: dark ? GColors.darkerGrey : GColors.light,
        child: Stack(
          children: [
            SizedBox(
              height: 450,
              child: Padding(
                padding: const EdgeInsets.all(GSize.productImageRadius),
                child: Center(
                  child: Image(image: AssetImage(GImages.productShoesImage1)),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              left: GSize.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: GSize.spaceBtwItems),
                  itemCount: 4,
                  itemBuilder: (_, index) => GRoundedImage(
                    imageUrl: GImages.productImage1,
                    width: 80,
                    backgroundColor: dark ? GColors.dark : GColors.white,
                    border: Border.all(color: GColors.primary),
                    padding: const EdgeInsets.all(GSize.sm),
                  ),
                ),
              ),
            ),

            GAppBar(
              showBackArrow: true,
              actions: [GCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
