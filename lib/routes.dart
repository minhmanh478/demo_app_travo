import 'package:demo_app_travo/representation/screens/intro_screen.dart';
import 'package:demo_app_travo/representation/screens/main_app.dart';
import 'package:demo_app_travo/representation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => const MainApp(),
};
