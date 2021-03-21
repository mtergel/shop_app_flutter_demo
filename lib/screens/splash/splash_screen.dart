import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/widgets/body.dart';
import 'package:shop_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    // calling it on starting screen !
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
