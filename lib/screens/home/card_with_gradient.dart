import 'package:flutter/material.dart';
import 'package:scenery_application/components/icon_container.dart';
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
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                child: TextFormField(
                  controller: _searchController,
                  validator: (value) {
                    if (value!.isEmpty) {}
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type to explore',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
