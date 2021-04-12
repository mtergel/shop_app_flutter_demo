import 'package:flutter/material.dart';
import 'package:shop_app/screens/home_screen/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreenBody(),
    );
  }
}
