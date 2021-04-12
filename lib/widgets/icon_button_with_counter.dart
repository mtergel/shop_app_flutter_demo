import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';
import 'package:flutter/material.dart';

class IconButtonWithCount extends StatelessWidget {
  const IconButtonWithCount({
    Key key,
    @required this.svgSrc,
    this.count = 0,
    @required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int count;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                shape: BoxShape.circle),
            child: SvgPicture.asset(svgSrc),
          ),
          if (count != 0)
            Positioned(
              top: -2,
              right: 0,
              child: Container(
                height: getProportionateScreenWidth(15),
                width: getProportionateScreenWidth(15),
                decoration: const BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    count.toString(),
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(10),
                        height: 1.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
