import 'package:flutter/material.dart';
import 'package:scenery_application/screens/home/home.dart';
import 'package:scenery_application/utils/constants.dart';
import 'package:scenery_application/utils/size_config.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scenery',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.white
      ),
      home: const Home(),
    );
  }
}