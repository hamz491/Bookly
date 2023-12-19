import 'package:bookly/Features/Splash/Preserntaion/view/SplashView.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(
        appBarTheme:
            const AppBarTheme().copyWith(backgroundColor: KprimaryColor),
        scaffoldBackgroundColor: KprimaryColor,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: const SplashView(),
    );
  }
}
