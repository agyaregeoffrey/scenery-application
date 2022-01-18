import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scenery_application/components/app_bar_title.dart';
import 'package:scenery_application/screens/home/home.dart';
import 'package:scenery_application/screens/search/search.dart';
import 'package:scenery_application/utils/constants.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    const List<Widget> _screens = [
      Home(),
      Search(),
    ];
    return MaterialApp(
      title: 'Scenery',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: const AppBarTitle(title: 'Scenery'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: navIconColor,
          selectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  color: _currentIndex == 0 ? navIconColor : colorGrey,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  color: _currentIndex == 1 ? navIconColor : colorGrey,
                ),
                label: 'Explore'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/fav.svg',
                  color: _currentIndex == 2 ? navIconColor : colorGrey,
                ),
                label: 'Favorites'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/profile.svg',
                  color: _currentIndex == 3 ? navIconColor : colorGrey,
                ),
                label: 'Profile'),
          ],
          onTap: (value) {
            print(value);
            setState(() {
              _currentIndex = value;
            });
          },
        ),
        body: _screens[_currentIndex],
      ),
    );
  }
}
