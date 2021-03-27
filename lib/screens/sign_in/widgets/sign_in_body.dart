// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:shop_app/screens/sign_in/widgets/sign_in_form.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/widgets/no_account_text.dart';
import 'package:shop_app/widgets/social_button.dart';

class SignInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  'Welcome back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(20),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: getProportionateScreenHeight(8)),
                const Text(
                    'Sign in with your email and password \nor continue with social media',
                    textAlign: TextAlign.center),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Signinform(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocialButton(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocialButton(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                const NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
