import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/widgets/complete_profile_body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = '/complete_password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
      ),
      body: CompleteProfileBody(),
    );
  }
}
