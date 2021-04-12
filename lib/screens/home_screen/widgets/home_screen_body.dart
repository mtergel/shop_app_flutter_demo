import 'package:flutter/material.dart';
import 'package:shop_app/screens/home_screen/widgets/categories.dart';
import 'package:shop_app/screens/home_screen/widgets/discount_banner.dart';
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
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const DiscountBanner(),
            Categories(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Special for you',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      color: Colors.black),
                ),
                const Text('See more')
              ],
            )
          ],
        ),
      ),
    );
  }
}
