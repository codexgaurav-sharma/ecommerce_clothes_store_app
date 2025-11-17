import 'package:clothes_app/common/widgets/appbar/appbar.dart';
import 'package:clothes_app/common/widgets/images/g_circular_image.dart';
import 'package:clothes_app/common/widgets/texts/section_heading.dart';
import 'package:clothes_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:clothes_app/utils/constants/image_strings.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppBar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSize.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    GCircularImage(
                      image: GImages.userImage1,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: GSize.spaceBtwItems / 2),
              Divider(),
              const SizedBox(height: GSize.spaceBtwItems),
              SectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: GSize.spaceBtwItems),

              GProfileMenu(
                title: 'Name',
                value: 'Gaurav Sharma',
                onPressed: () {},
              ),
              GProfileMenu(
                title: 'Username',
                value: 'codexgaurav',
                onPressed: () {},
              ),

              const SizedBox(height: GSize.spaceBtwItems),
              Divider(),
              const SizedBox(height: GSize.spaceBtwItems),
              SectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: GSize.spaceBtwItems),

              GProfileMenu(
                title: 'User ID',
                value: '45689',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              GProfileMenu(
                title: 'Email',
                value: 'codexgaurav@gmail.com',
                onPressed: () {},
              ),
              GProfileMenu(
                title: 'Phone Number',
                value: '+91-9854103675',
                onPressed: () {},
              ),
              GProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              GProfileMenu(
                title: 'Date of Birth',
                value: '11 Mar 2002',
                onPressed: () {},
              ),
              Divider(),
              const SizedBox(height: GSize.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
