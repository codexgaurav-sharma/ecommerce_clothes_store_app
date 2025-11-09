import 'package:clothes_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GCartCounterWidget extends StatelessWidget {
  final Color iconColor;
  final VoidCallback onPressed;
  const GCartCounterWidget({super.key, required this.iconColor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.shopping_bag, color: iconColor),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: GColors.black,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                "5",
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: GColors.white,
                  fontSizeFactor: 0.8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
