import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scenery_application/utils/constants.dart';
import 'package:scenery_application/utils/size_config.dart';

class IconOnDetail extends StatelessWidget {
  const IconOnDetail({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: lightGreyWithOpacity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {},
        child: SizedBox(
          width: getProportionateScreenWidth(50),
          height: getProportionateScreenHeight(70),
          child: Center(
              child: Icon(
            icon,
            color: Colors.white,
            size: 25,
          )),
        ),
      ),
    );
  }
}
