import 'package:flutter/material.dart';
import 'package:scenery_application/utils/constants.dart';
import 'package:scenery_application/utils/size_config.dart';

class NatureCategories extends StatelessWidget {
  const NatureCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _categories = ['Mountains', 'Water Falls', 'Forests'];
    return SizedBox(
      height: getProportionateScreenHeight(60.0),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: _categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(right: 20.0),
          width: getProportionateScreenWidth(100.0),
          height: getProportionateScreenHeight(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: lightGrey,
          ),
          child: Center(
            child: Text(
              _categories[index],
              style: descriptionTextStyle.copyWith(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
