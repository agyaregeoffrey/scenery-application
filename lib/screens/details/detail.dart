import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scenery_application/components/app_bar_title.dart';
import 'package:scenery_application/components/icon_on_detail.dart';
import 'package:scenery_application/site.dart';
import 'package:scenery_application/utils/constants.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key, required this.site}) : super(key: key);
  final Site site;

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    final _site = widget.site;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: AppBarTitle(title: _site.name),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 400,
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
                      child: Hero(
                        tag: _site.id,
                        child: Image.asset(
                          _site.image,
                          fit: BoxFit.fill,
                        ),
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
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About ${_site.name}',
                  style: captionTextStyle.copyWith(fontSize: 15.0),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(_site.about!),
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
