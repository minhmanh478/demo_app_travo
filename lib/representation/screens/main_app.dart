import 'package:demo_app_travo/core/constants/color_constants.dart';
import 'package:demo_app_travo/core/constants/dismension_constants.dart';
import 'package:demo_app_travo/representation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  static const routeName = 'main_app';

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          const HomeScreen(),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: ColorPallette.primaryColor,
        unselectedItemColor: ColorPallette.primaryColor.withOpacity(0.2),
        margin: const EdgeInsets.symmetric(
          horizontal: kMediumPading,
          vertical: kDefaultPadding,
        ),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.home,
              size: kDefaultIconSize,
            ),
            title: const Text('Home'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.home,
              size: kDefaultIconSize,
            ),
            title: const Text('Likes'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.home,
              size: kDefaultIconSize,
            ),
            title: const Text('Booking'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.home,
              size: kDefaultIconSize,
            ),
            title: const Text('Profile'),
          ),
        ],
      ),
    );
  }
}
