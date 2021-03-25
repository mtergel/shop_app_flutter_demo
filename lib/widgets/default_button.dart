// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  final String text;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
              backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              overlayColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.black.withOpacity(0.04);
                  }
                  if (states.contains(MaterialState.focused) ||
                      states.contains(MaterialState.pressed)) {
                    return Colors.black.withOpacity(0.12);
                  }
                  return null; // Defer to the widget's default.
                },
              ),
              textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: getProportionateScreenWidth(18)))),
          onPressed: press,
          child: Text(
            text,
          )),
    );
  }
}
