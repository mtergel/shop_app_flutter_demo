// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:shop_app/screens/sign_in/widgets/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
        // centerTitle: true,
      ),
      body: SignInBody(),
    );
  }
}
