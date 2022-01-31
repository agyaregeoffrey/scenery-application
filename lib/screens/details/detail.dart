import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scenery_application/components/app_bar_title.dart';
import 'package:scenery_application/components/icon_on_detail.dart';
import 'package:scenery_application/site.dart';
import 'package:scenery_application/utils/constants.dart';
import 'package:scenery_application/utils/size_config.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key, required this.site}) : super(key: key);
  final Site site;

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final sites = Site.sites;
  @override
  Widget build(BuildContext context) {
    final site = widget.site;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: AppBarTitle(title: site.name),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Hero(
                tag: heroTag,
                transitionOnUserGestures: true,
                child: Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    color: lightGrey,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          site.image,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        left: 20,
                        child: IconOnDetail(
                          icon: Icons.arrow_back,
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        right: 20,
                        child: IconOnDetail(
                          icon: Icons.notifications_outlined,
                        ),
                      ),
                      const Positioned(
                        bottom: 160,
                        right: 20,
                        child: IconOnDetail(
                          icon: Icons.location_on_outlined,
                        ),
                      ),
                      const Positioned(
                        bottom: 100,
                        right: 20,
                        child: IconOnDetail(
                          icon: Icons.message_outlined,
                        ),
                      ),
                      const Positioned(
                        bottom: 40,
                        right: 20,
                        child: IconOnDetail(
                          icon: Icons.favorite_outline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: getProportionateScreenHeight(150.0),
                child: ListView.builder(
                    itemCount: widget.site.otherImages.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => Container(
                          margin: const EdgeInsets.only(right: 16.0),
                          height: getProportionateScreenHeight(150.0),
                          width: getProportionateScreenWidth(150),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.asset(
                              widget.site.otherImages[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About ${site.name}',
                  style: captionTextStyle.copyWith(fontSize: 15.0),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(site.about!),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
