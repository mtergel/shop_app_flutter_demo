import 'package:flutter/material.dart';
import 'package:shop_app/screens/home_screen/home_screen.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/widgets/default_button.dart';

class LoginSuccessBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Image.asset(
            'assets/images/success.png',
            height: SizeConfig.screenHeight * 0.4, // 40% height,
            fit: BoxFit.cover,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            'Login Success',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: 'Back to home',
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
