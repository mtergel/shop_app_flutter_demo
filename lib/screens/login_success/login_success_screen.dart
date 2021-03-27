import 'package:flutter/material.dart';
import 'package:shop_app/screens/login_success/widgets/login_screen_body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = '/login_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text('Login Success'),
      ),
      body: LoginSuccessBody(),
    );
  }
}
