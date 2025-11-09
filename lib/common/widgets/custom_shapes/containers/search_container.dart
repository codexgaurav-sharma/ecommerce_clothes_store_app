import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/devices/device_utility.dart';

class GSearchContainer extends StatelessWidget {
  final IconData? icon;
  final String text;
  final bool showBackground, showBorder;
  const GSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: GSize.defaultSpace),
      child: Container(
        width: GDeviceUtility.getScreenWidth(context),
        padding: const EdgeInsets.all(GSize.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                    ? GColors.dark
                    : GColors.white
              : Colors.transparent,
          borderRadius: BorderRadius.circular(GSize.cardRadiusLg),
          border: showBorder ? Border.all(color: GColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: GColors.darkGrey),
            const SizedBox(width: GSize.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
