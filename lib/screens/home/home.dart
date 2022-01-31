import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scenery_application/components/icon_container.dart';
import 'package:scenery_application/screens/details/detail.dart';
import 'package:scenery_application/screens/home/card_with_gradient.dart';
import 'package:scenery_application/screens/home/nature_categories.dart';
import 'package:scenery_application/site.dart';
import 'package:scenery_application/utils/constants.dart';
import 'package:scenery_application/utils/size_config.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final sites = Site.sites;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CardWithGradient(),
            SizedBox(
              height: getProportionateScreenHeight(50.0),
            ),
            Text(
              'Nature Categories',
              style: captionTextStyle.copyWith(fontSize: 15.0),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const NatureCategories(),
            SizedBox(height: getProportionateScreenHeight(30.0)),
            Row(
              children: [
                Text(
                  'Top Picks',
                  style: captionTextStyle.copyWith(fontSize: 15.0),
                ),
                SizedBox(width: getProportionateScreenWidth(170.0)),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          'Explore',
                          style: descriptionTextStyle.copyWith(fontSize: 15.0),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(10),
                        ),
                        const Icon(
                          CupertinoIcons.arrow_right,
                          color: iconColor,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20.0),
            ),
            _topPicks()
          ],
        ),
      ),
    );
  }

  SizedBox _topPicks() {
    return SizedBox(
      height: getProportionateScreenHeight(280),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: sites.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detail(
                  site: sites[index],
                ),
              ),
            );
          },
          child: Hero(
            tag: heroTag,
            transitionOnUserGestures: true,
            child: Container(
              margin: const EdgeInsets.only(right: 20.0),
              width: getProportionateScreenWidth(180),
              height: getProportionateScreenHeight(280),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [cardBottomShadow]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    child: Image.asset(
                      sites[index].image,
                      height: 140,
                      width: getProportionateScreenWidth(280),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      sites[index].name,
                      style: captionTextStyle.copyWith(fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Text(
                          sites[index].location,
                          style: descriptionTextStyle.copyWith(fontSize: 10.0),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(30),
                        ),
                        const IconContainer(
                          icon: 'assets/icons/favorite.svg',
                          width: 30,
                          height: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
