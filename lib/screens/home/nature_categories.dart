import 'package:flutter/material.dart';
import 'package:scenery_application/utils/constants.dart';
import 'package:scenery_application/utils/size_config.dart';

class NatureCategories extends StatefulWidget {
  const NatureCategories({
    Key? key,
  }) : super(key: key);

  @override
  State<NatureCategories> createState() => _NatureCategoriesState();
}

class _NatureCategoriesState extends State<NatureCategories> {
  final _categories = ['Mountains', 'Water Falls', 'Forests'];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(60.0),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: _categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _category(index),
      ),
    );
  }

  Widget _category(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20.0),
        width: getProportionateScreenWidth(100.0),
        height: getProportionateScreenHeight(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: _selectedIndex == index ? cursorColor : lightGrey,
        ),
        child: Center(
          child: Text(
            _categories[index],
            style: descriptionTextStyle.copyWith(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
