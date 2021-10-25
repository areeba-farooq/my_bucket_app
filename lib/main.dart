import 'package:flutter/material.dart';

import 'Screens/splash_screen.dart';

void main(){
  runApp( MaterialApp(
    home: const SplashScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    primaryColor: const Color(0xFF21B894),
      accentColor: const Color(0xFFFF8216)
    )
  ));
}