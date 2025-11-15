import 'package:clothes_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:clothes_app/common/widgets/images/g_circular_image.dart';
import 'package:clothes_app/common/widgets/texts/brand_title_text_with_verify_icon.dart';
import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/enums.dart';
import 'package:clothes_app/utils/constants/image_strings.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class GBrandCard extends StatelessWidget {
  const GBrandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = GHelperFunction.isDarkMode(context);   
    return GestureDetector(
      onTap: onTap,
      child: GRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(GSize.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: GCircularImage(
              isNetworkImage: false,
              image: GImages.productImage1,
              backgroundColor: Colors.transparent,
              overlayColor: isDark ? GColors.white : GColors.black,
              )),
              const SizedBox(width: GSize.spaceBtwItems / 2),

               Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const BrandTitleTextWithVerifyIcon(
                                          title: 'Nike',
                                          brandTextSizes: TextSizes.large,
                                        ),
                                        Text(
                                          "256 products",
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(
                                            context,
                                          ).textTheme.labelMedium,
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
