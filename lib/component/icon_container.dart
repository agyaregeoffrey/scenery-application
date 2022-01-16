import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scenery_application/utils/size_config.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    Key? key,
    required this.icon,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String icon;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {},
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          height: getProportionateScreenHeight(height),
          child: Center(
            child: SvgPicture.asset(
              icon,
              height: 25.0,
              width: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}
