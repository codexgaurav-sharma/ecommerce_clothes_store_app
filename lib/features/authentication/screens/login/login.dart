import 'package:clothes_app/common/styles/spacing_styles.dart';
import 'package:clothes_app/common/widgets/login_signup/divider_login_signup.dart';
import 'package:clothes_app/common/widgets/login_signup/social_login_signup.dart';
import 'package:clothes_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:clothes_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:clothes_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: GSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginHeader(dark: dark),
              const LoginForm(),
              DividerLoginSignup(dark: dark, dividerText: "or signup with"),
              const SizedBox(height: GSize.spaceBtwSections),
              const SocialLoginSignup(),
            ],
          ),
        ),
      ),
    );
  }
}
