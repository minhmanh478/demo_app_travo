import 'package:demo_app_travo/core/helpers/assets_helper.dart';
import 'package:demo_app_travo/core/helpers/image_helper.dart';
import 'package:demo_app_travo/representation/screens/intro_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectIntroScreen();
  }

  void redirectIntroScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushNamed(IntroScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFromAsset(AssetsHelper.imageBackGroudSplash,
              fit: BoxFit.fitWidth),
        ),
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
            AssetsHelper.imageCircleSplash,
            // fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
