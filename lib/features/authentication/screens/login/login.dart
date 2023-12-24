import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/common/widgets/form_divider.dart';
import 'package:ecommerce_app/common/widgets/form_social_button.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & Subtitle
              LoginHeader(),

              // Form
              LoginForm(),

              // Divider
              FormDivider(
                text: TTexts.orSignInWith,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // Footer
              SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
