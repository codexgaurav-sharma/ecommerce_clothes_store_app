import 'package:clothes_app/features/authentication/screens/password_configration/forget_password.dart';
import 'package:clothes_app/features/authentication/screens/signup/signup.dart';
import 'package:clothes_app/navigation_menu.dart';
import 'package:clothes_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: GSize.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefix: Icon(Iconsax.direct_right),
                labelText: "Email",
              ),
            ),
            const SizedBox(height: GSize.spaceBtwInputFields),
            TextFormField(
              decoration: InputDecoration(
                prefix: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: "Password",
              ),
            ),
            const SizedBox(height: GSize.spaceBtwInputFields / 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text("Remeber me."),
                  ],
                ),

                TextButton(
                  onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                  child: Text("forget password ?"),
                ),
              ],
            ),
            const SizedBox(height: GSize.spaceBtwSections),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: Text("Sign in"),
              ),
            ),
            const SizedBox(height: GSize.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: Text("Create Account"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
