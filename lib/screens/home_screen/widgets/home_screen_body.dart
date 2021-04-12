import 'package:flutter/material.dart';
import 'package:shop_app/screens/home_screen/widgets/home_header.dart';
import 'package:shop_app/size_config.dart';

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            const HomeHeader()
          ],
        ),
      ),
    );
  }
}
