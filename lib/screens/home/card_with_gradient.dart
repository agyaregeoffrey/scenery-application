import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scenery_application/components/icon_container.dart';
import 'package:scenery_application/components/search_text_field.dart';
import 'package:scenery_application/utils/constants.dart';
import 'package:scenery_application/utils/size_config.dart';

class CardWithGradient extends StatelessWidget {
  const CardWithGradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _searchController = TextEditingController();
    return Container(
      width: getProportionateScreenWidth(400.0),
      height: getProportionateScreenHeight(400.0),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          ),
          gradient: cardGradient,
          boxShadow: [cardShadow]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24.0),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 25.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset(
                      'assets/images/army.jpeg',
                      height: 50.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                const Text(
                  'Hello, Geoffrey',
                  style: captionTextStyle,
                ),
                const SizedBox(width: 90.0),
                const IconContainer(
                  icon: 'assets/icons/notification.svg',
                  width: 50.0,
                  height: 70.0,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(90.0),
            ),
            Text(
              'What do \nyou want to explore today?',
              style: captionTextStyle.copyWith(fontSize: 15.0),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30.0),
            ),
            SearchTextField(
              searchController: _searchController,
              backgroundColor: Colors.white,
              hint: 'Type to explore',
            ),
          ],
        ),
      ),
    );
  }
}
