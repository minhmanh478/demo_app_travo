import 'package:demo_app_travo/core/constants/color_constants.dart';
import 'package:demo_app_travo/core/helpers/local_storage_helper.dart';
import 'package:demo_app_travo/representation/screens/splash_screen.dart';
import 'package:demo_app_travo/routes.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  // Mở box local
  await LocalStorageHelper.initLocalStorageHelper();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travo app',
      theme: ThemeData(
        primaryColor: ColorPallette.primaryColor,
        scaffoldBackgroundColor: ColorPallette.whiteTextColor,
      ),
      routes: routes,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
