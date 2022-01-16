import 'dart:ui';

import 'package:flutter/material.dart';

const primaryLightColor = Color(0xFFA0AEBC);
const primaryTextColor = Color(0xFF000000);
const colorGrey = Color(0xFFB3B7C4);
const lightGrey = Color(0xFFECECEC);
const iconColor = Color(0xFFB3B7C4);
const navIconColor = Color(0xFF00BFFB);
Color lightGreyWithOpacity = lightGrey.withOpacity(0.5);

const gradientColors = [Color(0xFF5EFFB1), Color(0xFF81E1FF)];
const cardGradient = LinearGradient(
    colors: gradientColors,
    begin: Alignment.bottomLeft,
    end: Alignment.topRight);

final cardShadow = BoxShadow(
    color: lightGreyWithOpacity,
    spreadRadius: 5,
    blurRadius: 7,
    offset: const Offset(0, 3));

final cardBottomShadow = BoxShadow(
    color: lightGreyWithOpacity,
    blurRadius: 15.0,
    spreadRadius: 5,
    offset: const Offset(0, 0.75));

const captionTextStyle = TextStyle(
  fontSize: 13.0,
  color: primaryTextColor,
  fontWeight: FontWeight.bold,
);

const bigTextStyle = TextStyle(
  fontSize: 20.0,
  color: primaryTextColor,
  fontWeight: FontWeight.bold,
);

const descriptionTextStyle = TextStyle(
  fontSize: 11.5,
  color: Color(0xFFB3B7C4),
  fontWeight: FontWeight.bold,
);

// Pref keys
const emailKey = 'email';
const passwordKey = 'password';
