import 'package:flutter/material.dart';
import 'package:shop_app/screens/home_screen/widgets/search_field.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/widgets/icon_button_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconButtonWithCount(
            svgSrc: 'assets/icons/Cart Icon.svg',
            press: () {},
          ),
          IconButtonWithCount(
            count: 3,
            svgSrc: 'assets/icons/Bell.svg',
            press: () {},
          )
        ],
      ),
    );
  }
}
