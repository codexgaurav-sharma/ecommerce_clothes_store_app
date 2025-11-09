
import 'package:clothes_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: GSize.defaultSpace,
      top: GDeviceUtility.getAppBarHeight(),
      child: TextButton(onPressed: () => OnboardingController.instance.skipPage(), child: const Text("Skip")),
    );
  }
}

