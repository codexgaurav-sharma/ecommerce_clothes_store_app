import 'package:clothes_app/common/widgets/login_signup/divider_login_signup.dart';
import 'package:clothes_app/common/widgets/login_signup/social_login_signup.dart';
import 'package:clothes_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(GSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's create your account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: GSize.spaceBtwSections),
              SignupForm(dark: dark),
              const SizedBox(height: GSize.spaceBtwSections),
              DividerLoginSignup(dark: dark, dividerText: "or sign up with"),
              const SizedBox(height: GSize.spaceBtwSections),
              const SocialLoginSignup(),
            ],
          ),
        ),
      ),
    );
  }
}
