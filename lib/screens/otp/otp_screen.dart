import 'package:flutter/material.dart';
import 'package:shop_app/screens/otp/widgets/otp_screen_body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = '/opt_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
      ),
      body: OtpScreenBody(),
    );
  }
}
