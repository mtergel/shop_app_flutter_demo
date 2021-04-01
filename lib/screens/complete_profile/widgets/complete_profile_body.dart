import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/complete_profile/widgets/complete_profile_form.dart';
import 'package:shop_app/size_config.dart';

class CompleteProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Text(
                'Complete Profile',
                style: headingStyle,
              ),
              const Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              CompleteProfileForm(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              const Text(
                'By continuing your confirm that you agree\nwith our Term and Condition',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
