import 'package:demo_app_travo/core/helpers/assets_helper.dart';
import 'package:demo_app_travo/core/helpers/image_helper.dart';
import 'package:demo_app_travo/core/helpers/local_storage_helper.dart';
import 'package:demo_app_travo/representation/screens/intro_screen.dart';
import 'package:demo_app_travo/representation/screens/main_app.dart';
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
    final ignoreIntroScreen =
        LocalStorageHelper.getValue('ignoreIntroScreen') as bool?;

    await Future.delayed(const Duration(milliseconds: 2000));

    if (!mounted) return; // Kiểm tra context còn tồn tại

    if (ignoreIntroScreen != null && ignoreIntroScreen) {
      Navigator.of(context).pushNamed(MainApp.routeName);
    } else {
      LocalStorageHelper.setValue('ignoreIntroScreen', true);
      Navigator.of(context).pushNamed(IntroScreen.routeName);
    }
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
