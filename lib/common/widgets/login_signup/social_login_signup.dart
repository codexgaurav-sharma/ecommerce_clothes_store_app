import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/image_strings.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialLoginSignup extends StatelessWidget {
  const SocialLoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: GColors.grey),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Image(
                  width: GSize.iconMd,
                  height: GSize.iconMd,
                  image: AssetImage(GImages.googleLogo),
                ),
              ),
            ),
            const SizedBox(width: GSize.spaceBtwItems),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: GColors.grey),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Image(
                  width: GSize.iconMd,
                  height: GSize.iconMd,
                  image: AssetImage(GImages.facebookLogo),
                ),
              ),
            ),
          ],
        );
  }
}