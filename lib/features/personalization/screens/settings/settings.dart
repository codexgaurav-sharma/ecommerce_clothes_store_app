import 'package:clothes_app/common/widgets/appbar/appbar.dart';
import 'package:clothes_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:clothes_app/common/widgets/list_tile/settings_menu.dart';
import 'package:clothes_app/common/widgets/list_tile/user_profile_tile.dart';
import 'package:clothes_app/common/widgets/texts/section_heading.dart';
import 'package:clothes_app/features/personalization/screens/profile/profile.dart';
import 'package:clothes_app/utils/constants/colors.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GPrimaryHeaderContainer(
              child: Column(
                children: [
                  GAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: GColors.white),
                    ),
                  ),

                  GUserProfileTIle(onTap: () => Get.to(()=>ProfileSettingScreen()),),
                  const SizedBox(height: GSize.spaceBtwSections),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(GSize.defaultSpace),
              child: Column(
                children: [
                  SectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: GSize.spaceBtwItems),
                  GSettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),
                  GSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add remove products and move to checkout',
                    onTap: () {},
                  ),
                  GSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In progress and Completed Orders',
                    onTap: () {},
                  ),
                  GSettingMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                    onTap: () {},
                  ),
                  GSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                    onTap: () {},
                  ),
                  GSettingMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any Kind of notification message',
                    onTap: () {},
                  ),
                  GSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                    onTap: () {},
                  ),

                  SizedBox(height: GSize.spaceBtwSections),
                  SectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  SizedBox(height: GSize.spaceBtwItems),
                  GSettingMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'upload Data to your Cloud Firebase',
                  ),
                  GSettingMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  GSettingMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  GSettingMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality to be seen',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  const SizedBox(height: GSize.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: GSize.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
