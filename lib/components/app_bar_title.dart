import 'package:flutter/material.dart';
import 'package:scenery_application/utils/constants.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        title,
        style: captionTextStyle.copyWith(
          fontSize: 18.0,
        ),
      ),
    );
  }
}
