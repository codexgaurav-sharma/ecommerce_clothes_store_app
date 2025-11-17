
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GRatingAndShare extends StatelessWidget {
  const GRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Iconsax.star5, color: Colors.amber, size: 24),
            SizedBox(width: GSize.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '5.0',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const TextSpan(text: ' (200)'),
                ],
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share, size: GSize.iconMd),
        ),
      ],
    );
  }
}
