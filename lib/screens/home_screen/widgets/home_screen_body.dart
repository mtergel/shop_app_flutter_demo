import 'package:flutter/material.dart';
import 'package:shop_app/screens/home_screen/widgets/categories.dart';
import 'package:shop_app/screens/home_screen/widgets/discount_banner.dart';
import 'package:shop_app/screens/home_screen/widgets/home_header.dart';
import 'package:shop_app/screens/home_screen/widgets/popular_products.dart';
import 'package:shop_app/screens/home_screen/widgets/special_offer.dart';
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
            SizedBox(height: getProportionateScreenWidth(30)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
