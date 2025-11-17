import 'package:clothes_app/common/widgets/images/g_circular_image.dart';
import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GUserProfileTIle extends StatelessWidget {
  const GUserProfileTIle({super.key, required this.onTap});

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: GCircularImage(
        padding: 0,
        width: 50,
        height: 50,
        image: GImages.userImage1,
      ),
      title: Text(
        "CodeXGaurav",
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: GColors.white),
      ),
      subtitle: Text(
        "megauravsharma9@gmail.com",
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: GColors.white),
      ),
      trailing: IconButton(
        onPressed: onTap,
        icon: const Icon(Iconsax.edit, color: GColors.white),
      ),
    );
  }
}
