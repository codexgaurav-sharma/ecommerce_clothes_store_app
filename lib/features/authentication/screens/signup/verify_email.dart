import 'package:clothes_app/common/widgets/success_screen/success_screen.dart';
import 'package:clothes_app/features/authentication/screens/login/login.dart';
import 'package:clothes_app/utils/constants/image_strings.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(GSize.defaultSpace),
          child: Column(
            children: [
              Image(
                width: GHelperFunction.screenWidth() * 0.6,
                image: AssetImage(GImages.onboardingImage4),
              ),
              const SizedBox(height: GSize.spaceBtwSections),
              Text(
                "Verify your email address!",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: GSize.spaceBtwItems),
              Text(
                "example123@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: GSize.spaceBtwItems),
              Text(
                "Congratulations! Your Accounts Awaits: Verify Your Email to Start Shopping.",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: GSize.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      imagePath: GImages.onboardingImage4,
                      onPresses: () => Get.to(() => const LoginScreen()),
                      subTitle:
                          'Congratulations! Your Account has been Verify successfully. Now you login and Start Shopping.',
                      title: "Your account successfully created!",
                    ),
                  ),
                  child: const Text("Continue"),
                ),
              ),
              const SizedBox(height: GSize.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Resend Email"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
