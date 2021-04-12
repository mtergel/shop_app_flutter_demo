import 'package:flutter/material.dart';
import 'package:shop_app/models/product_model.dart';
import 'package:shop_app/screens/home_screen/widgets/section_title.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/widgets/product_card.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          press: () {},
          text: 'Popular Products',
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length,
                  (index) => ProductCard(product: demoProducts[index])),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        )
      ],
    );
  }
}
