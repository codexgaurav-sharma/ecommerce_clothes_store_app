import 'package:clothes_app/common/styles/spacing_styles.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final String imagePath, title, subTitle;
  final VoidCallback onPresses;
  const SuccessScreen({super.key, required this.imagePath, required this.onPresses, required this.subTitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: GSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                width: GHelperFunction.screenWidth() * 0.6,
                image: AssetImage(imagePath),
              ),
              const SizedBox(height: GSize.spaceBtwSections),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: GSize.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: GSize.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPresses,
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
