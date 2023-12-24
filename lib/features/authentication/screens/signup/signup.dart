import 'package:ecommerce_app/common/widgets/form_divider.dart';
import 'package:ecommerce_app/common/widgets/form_social_button.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // Form
              const SignupForm(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // Divider
              FormDivider(text: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // Footer
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
